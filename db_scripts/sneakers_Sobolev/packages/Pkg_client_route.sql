/*Проблема в задании про функцию в том, что в фактических данных допущена такая ситуация, когда тренировка происходит раньше
оплаты, при этом требуется вывести полный маршрут клиента и наименование спортивной услуги, тогда как нет понимания об услуге
с которой клиент занимается до первой оплаты. Более того, услуга (минимальная услуга, доступная в пакете) содержится в другом справочнике.
Таким образом, в данной функции объединияются таблицы транзакций и посещений. Затем если посещение произошло раньше оплаты,
то находится первая оплата, из нее берется наименование услуги и проставляется всем предшествующим и последующим тренировкам до следующей оплаты.
После следующей оплаты, в случае, если наименование пакета меняется (клиент решил сменить пакет услуг) в следующих тренировках ставится
новое наименование услуги из вновь оплаченного пакета. 
Для реализации данной схемы данные выгружаются в коллекцию и последовательно перегружаются в конвейерную функцию с постройчной обработкой*/
create or replace package pkg_client_route as
        type report_rec is record (V_day date, -- дата транзакции
                                   client_name varchar2(64 char), -- Имя, фамилия клента
                                   city_name varchar2(62), -- Город
                                   club_name varchar2(32), -- Наименование клуба
                                   flag varchar2(3), -- Одиночная тренировка или с тренером
                                   st_name varchar2(32), -- Наименование спортивной услуги из пакета
                                   operation_type varchar2(16 char), -- Тип операции (оплата или тренировка)
                                   Payment varchar2(32)); --Сумма оплаты и валюта
        type report_tbl is table of report_rec;
        function get_client_route (memr_uk in number) return report_tbl pipelined;
end pkg_client_route;

Create or replace package body pkg_client_route as
    function get_client_route (memr_uk in number) return report_tbl pipelined
    IS
    v_report_row report_rec;
    tmp_table report_tbl;
    i number :=1; -- используем для поиска первой оплаты, т.к. оплаты в базе начинаются позже первой тренировки
    g number :=1; -- используем для заполнения спортивной услуги из первой оплаты ДО НАЧАЛЬНОЙ тренировки
    r number :=1; -- используем для конвейерной функции
    tmp_st_name varchar2(32); -- временное хранение спортивной услуги из первой оплаты ДО НАЧАЛЬНОЙ тренировки
    cursor c_report is -- объединяем таблицы тренировок и тразнакций, чтобы вытянуть оплаченные пакеты и наименование услуги
with client_route as -- и совместить их с графиком тренировок по датам
(select vf.value_day as day,
       vf.member_uk as client,
       vf.venue_uk as club,
       vf.standalone_flg as flag,
       null as mem_uk,  -- null значит это тренировка, а не транзакция (в объединяемых таблицах) пустая колонка
       null as operation_type, -- проставляем пустую псевдоколонку типов операций
       null as payment, -- псевдоколонка оплаты
       null as currency -- псевдоколонка валюты
from visiting_fct vf
where vf.member_UK = memr_uk
union all  -- прикладываем транзакции 
select tf.value_day as day,
       tf.member_uk as client,
       null as club, -- null - значит это транзакция, а не тренировка
       null as flag, -- пустая колонка с типом тренировки, т.к. присоединяем таблицу транзакций
       tf.membership_uk as mem_uk,
       null as operation_type, -- пустая псевдоколонка типов операций
       tf.value_amt as payment,--опллата
       currency_uk as currency --валюта
from transaction_fct tf
where tf.member_UK = memr_uk)
select client_route.day as v_day,
       mem.first_name||' '||mem.last_name as client, -- имя фамилия клиента
       cit.name as city_name,
       ven.name as club, -- наименование клуба
       client_route.flag as flag, -- указатель одиночной тренинровки или с тренером
       st.name as st_name, -- наименование спортивной услуги
       client_route.operation_type as operation_type, -- тип операции
       client_route.payment||' '||crcy.ccode as payment -- сумма оплаты и код валюты
from client_route
inner join member_dim mem
      on client_route.client=mem.uk
      
inner join city_dim cit
      on mem.base_city_uk=cit.uk
left outer join currency_dim crcy
      on client_route.currency=crcy.uk
      
left outer join venue_dim ven
      on ven.uk=client_route.club
      
left outer join sportstype_dim st 
      on st.least_membership_uk=client_route.mem_uk
order by client_route.day;

Begin
    open c_report;
    fetch c_report bulk collect into tmp_table; -- перекладываем в коллекцию
    close c_report;
 
    if tmp_table(1).st_name is null then -- случай если транзакций перед первым посещением клуба не было - заполняем услуги из последующих транзакций
        while tmp_table(i).st_name is null loop -- т.к. не может быть тренировки без оплаченного пакета, значит берем значения
            i:=i+1; -- спортивной услуги из первой транзакции (оплаты) - находим первую транзакцию
            end loop;
            tmp_st_name:=tmp_table(i).st_name; -- присваиваем наименование спортивной слуги
           
   for g in 1..i loop -- выкладываем конвеером все события до первой оплаты с наименованием услуги из первой оплаты
        v_report_row := null;
        v_report_row.v_day:=tmp_table(g).v_day; 
        v_report_row.client_name :=tmp_table(g).client_name;
        v_report_row.city_name := tmp_table(g).city_name;
        v_report_row.club_name := tmp_table(g).club_name;
        v_report_row. flag  := tmp_table(g).flag;    
        v_report_row.st_name := tmp_st_name;
    if tmp_table(g).flag is null -- определяем тип операции - тренировка или оплата
        then v_report_row.operation_type := 'Оплата';
        else v_report_row.operation_type := 'Тренировка';
    end if;
         v_report_row.payment := tmp_table(g).payment;
    pipe row (v_report_row); 
    end loop;
    i:=i+1;
   end if;
  
   for r in i..tmp_table.count loop --заполняем оставшуюся часть таблицы. Если первая операция - оплата - то заполняем в обычном режиме
    v_report_row := null;
    v_report_row.v_day:=tmp_table(r).v_day;
    v_report_row.client_name :=tmp_table(r).client_name;
     v_report_row.city_name := tmp_table(r).city_name;
    v_report_row.club_name := tmp_table(r).club_name;
    v_report_row. flag  := tmp_table(r).flag;
  if tmp_table(r).st_name is null then -- заполняем наименование спортивной услуги в тренировках из информации об оплаченном пакете
      v_report_row.st_name:= tmp_st_name; -- берем данные из переменной
  else 
      tmp_st_name :=tmp_table(r).st_name; -- определяем, если это оплата (есть данные об оплате услуги), передаем значение услуги в переменную
    v_report_row.st_name := tmp_table(r).st_name; -- и заполняем строку данными об оплаченной услуге
    end if;
   if tmp_table(r).flag is null -- заполняем тип операции (флаг типа тренировки пустой - оплата), не пустой - тренировка
     then  v_report_row.operation_type := 'Оплата';
     else v_report_row.operation_type := 'Тренировка';
   end if;    
   v_report_row.payment := tmp_table(r).payment;
    pipe row (v_report_row);
    end loop;
    return;
    Exception
    when others then
    dbms_output.put_line(sqlerrm);
end get_client_route;
End pkg_client_route;