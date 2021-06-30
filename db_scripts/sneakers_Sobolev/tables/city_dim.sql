create table city_dim (uk number not null,
                      name varchar2(32),
                      country_uk number not null,
                      primary key (uk),
                      foreign key (country_uk) references country_dim(uk));


comment on table city_dim is 'Справочник городов';
comment on column city_dim.uk is 'Уникальный ключ города';
comment on column city_dim.name is 'Наименование города';
comment on column city_dim.country_uk is 'Ссылочный ключ на страну';

insert into city_dim (uk, name,country_uk) values 
                     (f_key_gen,'Vorkuta', 1339);
insert into city_dim (uk, name,country_uk) values 
                     (f_key_gen,'Sochi', 1339);
insert into city_dim (uk, name,country_uk) values 
                     (f_key_gen,'Moscow', 1339);
insert into city_dim (uk, name,country_uk) values 
                     (f_key_gen,'Norilsk', 1339);
insert into city_dim (uk, name,country_uk) values 
                     (f_key_gen,'Yekaterinburg', 1339);
insert into city_dim (uk, name,country_uk) values 
                     (f_key_gen,'Saint_Petersburg', 1339);
commit;