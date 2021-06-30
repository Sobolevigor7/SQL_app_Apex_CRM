create table country_dim (uk number not null,
                      ccode varchar2(8),
                      name varchar2(32),
                      primary key (uk));


comment on table country_dim is 'Справочник стран';
comment on column country_dim.uk is 'Уникальный ключ страны';
comment on column country_dim.ccode is 'Символьный код страны';
comment on column country_dim.name is 'Наименование страны';

insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'RUS','Russian Federation');
insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'US','United States of America');
insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'UK','United Kingdom');
insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'IT','Italy');
insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'ES','Spain');
insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'GER','Germany');
insert into country_dim (uk, ccode, name) values
                        (f_key_gen, 'JP','Japan');
commit;