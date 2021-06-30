create table transaction_fct (value_day date not null,
                      member_uk number not null,
                      membership_uk number not null,
                      currency_uk number not null,
                      value_amt number not null,
                      foreign key (member_uk) references member_dim (uk),
                      foreign key (membership_uk) references membership_dim (uk),
                      foreign key (currency_uk) references currency_dim (uk));
                      
comment on table transaction_fct is 'Факты денежных переводов';
comment on column transaction_fct.value_day is 'Дата транзакции';
comment on column transaction_fct.member_uk is 'Ссылочный ключ на клиента';
comment on column transaction_fct.membership_uk is 'Ссылочный ключ на программу клиента';
comment on column transaction_fct.currency_uk is 'Ссылочный ключ на валюту';
comment on column transaction_fct.value_amt is 'Сумма выплаты';