create or replace procedure P_month_agg (P_month in number,
                                         P_year in number)
AS      
Begin
  delete month_progress_agg;  
    insert into month_progress_agg (member_uk, sportstype_uk, visiting_cnt, month, year)
    select 
           vf.member_uk,
           st.uk,
           count(vf.member_uk) as cnt,
           P_month as month,
           P_year as year
    from visiting_fct vf --берем данные по посещениям
        left outer join member_dim mb  
        on vf.member_uk=mb.uk
        left outer join sportstype_dim st -- берем код спортивной услуги
        on mb.membership_uk = st.least_membership_uk
    where vf.value_day between (01||'.'||P_month||'.'||P_year)and last_day(01||'.'||P_month||'.'||P_year) -- задаем период месяц
    group by vf.member_uk, st.uk
    order by vf.member_uk;
 EXCEPTION
    when others then
    dbms_output.put_line(sqlerrm);
End;