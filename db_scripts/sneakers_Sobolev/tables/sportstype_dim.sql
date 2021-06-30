create table sportstype_dim (uk number not null,
                      name varchar2(256),
                      least_membership_uk number not null,
                      primary key (uk),
                      foreign key (least_membership_uk) references membership_dim (uk));
                      
comment on table sportstype_dim is 'Справочник спортивных услуг';
comment on column sportstype_dim.uk is 'Уникальный ключ спортивной услуги';
comment on column sportstype_dim.name is 'Наименование спортивной услуги';
comment on column sportstype_dim.least_membership_uk is 'Ссылочный ключ на минимальный тип программы с которой доступна спортивная услуга';

insert into sportstype_dim (uk, name, least_membership_uk) values
                           (f_key_gen, 'Sauna', 1356);
insert into sportstype_dim (uk, name, least_membership_uk) values
                           (f_key_gen, 'SPA', 1357);
insert into sportstype_dim (uk, name, least_membership_uk) values
                           (f_key_gen, 'Swimming pool',1359 );
insert into sportstype_dim (uk, name, least_membership_uk) values
                           (f_key_gen, 'Solarium', 1358);
insert into sportstype_dim (uk, name, least_membership_uk) values
                           (f_key_gen, 'Fito Bar', 1359);
commit;