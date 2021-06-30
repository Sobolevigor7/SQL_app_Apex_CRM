create table visiting_fct (member_uk number not null,
                      venue_uk number not null,
                      city_uk number not null,
                      value_day date not null,
                      standalone_flg varchar2(1),
                      foreign key (member_uk) references member_dim (uk),
                      foreign key (venue_uk) references venue_dim (uk),
                      foreign key (city_uk) references city_dim (uk));

comment on table visiting_fct is 'Факты посещения клубов клиентами';
comment on column visiting_fct.member_uk is 'Ссылочный ключ на клиента';
comment on column visiting_fct.venue_uk is 'Ссылочныц ключ на клуб';
comment on column visiting_fct.city_uk is 'Ссылочный ключ на город в котором расположен клуб';
comment on column visiting_fct.value_day is 'Дата тренировки';
comment on column visiting_fct.standalone_flg is 'Флаг работы в одиночестве, без тренера';