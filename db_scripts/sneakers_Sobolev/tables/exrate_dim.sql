create table exrate_dim (uk number not null,
                        ex_month number not null,
                        rate number not null,
                        currency_uk number,
                        primary key (uk));

comment on table exrate_dim is 'Справочник среднего обменного курса валют евро и доллара за 2020 год';
comment on column exrate_dim.uk is 'Уникальный ключ записи';
comment on column exrate_dim.ex_month is 'Месяц среднемесяччного курса (август-сентябрь-октябрь)';
comment on column exrate_dim.rate is 'Курс обмена';
comment on column exrate_dim.currency_uk is 'Код валюты из справочника валют';

insert into exrate_dim (uk, ex_month, rate, currency_uk) values
                       (f_key_gen, 8, 73.73, 1347);
insert into exrate_dim (uk, ex_month, rate, currency_uk) values
                       (f_key_gen, 9, 75.66, 1347);
insert into exrate_dim (uk, ex_month, rate, currency_uk) values
                       (f_key_gen, 10, 77.59, 1347);
insert into exrate_dim (uk, ex_month, rate, currency_uk) values
                       (f_key_gen, 8, 87.34, 1348);
insert into exrate_dim (uk, ex_month, rate, currency_uk) values
                       (f_key_gen, 9, 89.28, 1348);
insert into exrate_dim (uk, ex_month, rate, currency_uk) values
                       (f_key_gen, 10, 91.29, 1348);
commit;