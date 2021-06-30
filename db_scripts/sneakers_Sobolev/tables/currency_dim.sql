create table currency_dim (uk number not null,
                      iso_ncode number not null,
                      ccode varchar2(8),
                      name varchar2(256),
                      primary key (uk));
                      


comment on table currency_dim is 'Справочник валют';
comment on column currency_dim.uk is 'Уникальный ключ валюты';
comment on column currency_dim.iso_ncode is 'Числовой ISO код валюты';
comment on column currency_dim.ccode is 'Символьный код валюты';
comment on column currency_dim.name is 'Наименование валюты';


insert into currency_dim (uk, iso_ncode, ccode, name) values
                        (f_key_gen,643, 'RUR', 'Russian rouble');
insert into currency_dim (uk, iso_ncode, ccode, name) values
                        (f_key_gen,840, 'USD', 'United States Dollar');
insert into currency_dim (uk, iso_ncode, ccode, name) values
                        (f_key_gen,978, 'EUR', 'Euro');
insert into currency_dim (uk, iso_ncode, ccode, name) values
                        (f_key_gen,392, 'JPY', 'Japan Yen');
commit;
