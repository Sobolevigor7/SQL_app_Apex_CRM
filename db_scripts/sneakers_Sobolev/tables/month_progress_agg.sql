create table month_progress_agg (member_uk number not null,
                      sportstype_uk number not null,
                      visiting_cnt number not null,
                      month number (2,0) not null,
                      year number (4, 0) not null,
                      foreign key (member_uk) references member_dim (uk),
                      foreign key (sportstype_uk) references sportstype_dim (uk),
                      constraint mon_check check (month between 1 and 12),
                      constraint year_check check (year between 1990 and 2999));
                      
                      
comment on table month_progress_agg is 'Месячный агрегат использования спортивных услуг клиентами';
comment on column month_progress_agg.member_uk is 'Ссылочный ключ на клиента';
comment on column month_progress_agg.sportstype_uk is 'Ссылочный ключ на спортивную услугу';
comment on column month_progress_agg.visiting_cnt is 'Количество посещений в месяц';
comment on column month_progress_agg.month is 'Номер месяца';
comment on column month_progress_agg.year is 'Номер года';