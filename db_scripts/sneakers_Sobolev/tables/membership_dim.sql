create table membership_dim (uk number not null,
                      ccode varchar2(2) not null,
                      name varchar2(64),
                      monthly_limit number,
                      cancellation_period number,
                      massage_amt number,
                      ems_amt number,
                      price_rate number not null,
                      primary key (uk));
         
comment on table membership_dim is 'Справочник программ членства';
comment on column membership_dim.uk is 'Уникальный ключ программы членства';
comment on column membership_dim.ccode is 'Символьный код программы';
comment on column membership_dim.name is 'Наименование программы';
comment on column membership_dim.monthly_limit is 'Месячный лимит';
comment on column membership_dim.cancellation_period is 'Период работы программы';
comment on column membership_dim.massage_amt is 'Стоимость массажа';
comment on column membership_dim.ems_amt is 'Стоимость EMS вибрационной тренировки';
comment on column membership_dim.price_rate is 'Цена';

insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate) values
            (f_key_gen, 'S', 'Beginer', 10000, 4, 1000, 1500, 3000);
insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate) values
            (f_key_gen, 'M', 'Intermediate', 15000, 6, 1500, 2000, 4000);
insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate) values
            (f_key_gen, 'L', 'Advanced', 20000, 8, 2000, 2500, 5000);
insert into membership_dim (uk, ccode, name, monthly_limit, cancellation_period, massage_amt, ems_amt, price_rate) values
            (f_key_gen, 'XL', 'Professional', 30000, 12, 2500, 3000, 7000);
commit;