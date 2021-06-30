create table venue_dim (uk number not null,
                      name varchar2(256),
                      city_uk number not null,
                      least_membership_uk number not null,
                      sportstype_uk number not null,
                      primary key (uk),
                      foreign key (city_uk) references city_dim (uk),
                      foreign key (least_membership_uk) references membership_dim (uk),
                      foreign key (sportstype_uk) references sportstype_dim (uk));
                      
comment on table venue_dim is 'Справочник клубов';
comment on column venue_dim.uk is 'Уникальный ключ клуба';
comment on column venue_dim.name is 'Наименование клуба';
comment on column venue_dim.city_uk is 'Ссылочный ключ на город в котором расположен клуб';
comment on column venue_dim.least_membership_uk is 'Ссылочный ключ на минимальный тип программы с которой доступен клуб';
comment on column venue_dim.sportstype_uk is 'Ссылочный ключ на спортивную программму в этом клубе';

insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Betasoloin', 1353, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Betatech', 1352, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Bioholding', 1351, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Bioplex', 1355, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Codehow', 1350, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Condax', 1350, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Conecom', 1355, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'dambase', 1353, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Domzoom', 1355, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Donquadtech', 1350, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Dontechi', 1354, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Donware', 1354, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Fasehatice', 1351, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Faxquote', 1352, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Funholding', 1351, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Green-Plus', 1355, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Groovestreet', 1355, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Hottechi', 1351, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Inity', 1353, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Isdom', 1350, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Iselectrics', 1353, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Kan-code', 1352, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Konex', 1351, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Labdrill', 1354, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Lexiqvolax', 1350, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Mathtouch', 1355, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Nam-zim', 1350, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Ontomedia', 1353, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Openlane', 1350, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Opentech', 1350, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Plusstrip', 1354, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Plussunin', 1351, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Rangreen', 1351, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Rantouch', 1352, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Ron-tech', 1352, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Rundofase', 1352, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Scotfind', 1354, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Scottech', 1353, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Singletechno', 1352, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Sonron', 1354, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Stanredtax', 1354, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Statholdings', 1350, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Sumace', 1354, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Sunnamplex', 1353, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Toughzap', 1352, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Treequote', 1355, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Warephase', 1353, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Xx-holding', 1351, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Xx-zobam', 1351, 1359, 1362);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Y-corporation', 1353, 1359, 1364);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'year-job', 1355, 1356, 1360);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Zencorporation', 1353, 1357, 1361);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Zotware', 1353, 1358, 1363);
insert into venue_dim (uk, name, city_uk, least_membership_uk, sportstype_uk) values (f_key_gen, 'Zumgoity', 1354, 1359, 1362);
commit;