create table member_dim (uk number not null,
                      first_name varchar2(64),
                      last_name varchar2(64),
                      base_city_uk number not null,
                      membership_uk number not null,
                      primary key (uk),
                      foreign key (base_city_uk) references city_dim (uk),
                      foreign key (membership_uk) references membership_dim (uk));

                      
comment on table member_dim is 'Справочник клиентов';
comment on column member_dim.uk is 'Уникальный ключ клиента';
comment on column member_dim.first_name is 'Имя';
comment on column member_dim.last_name is 'Фамилия';
comment on column member_dim.base_city_uk is 'Ссылочный ключ на базовый город клиента';
comment on column member_dim.membership_uk is 'Ссылючный ключ на программу клиента';

insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Ailene', 'Frieden', 1353, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Alfredo', 'Hursey', 1354, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Andera', 'Valliere', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Annalee', 'Gulbranson', 1350, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Arlyne', 'Honda', 1353, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'August', 'Darland', 1353, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Beverley', 'Silveira', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Bobette', 'Shuff', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Carlene', 'Felice', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Carmelina', 'Hewett', 1350, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Celsa', 'Bumbalough', 1353, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Charlette', 'Radtke', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Chas', 'Vandever', 1351, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Chasidy', 'Nixon', 1350, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Connie', 'Newingham', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Cristopher', 'Brownfield', 1352, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Dan', 'Rozelle', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Danae', 'Smullen', 1351, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Daniela', 'Russaw', 1351, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Daniele', 'Euell', 1353, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Darcey', 'Heide', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Debora', 'Hoang', 1355, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Douglas', 'Charity', 1352, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Dreama', 'Moman', 1355, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Edmond', 'Dawe', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Elmer', 'Gean', 1354, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Emilie', 'Nemitz', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Euna', 'Mak', 1351, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Gena', 'Dacanay', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Genesis', 'Kowalczyk', 1355, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Gregoria', 'Fant', 1350, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Gwendolyn', 'Westerlund', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Hanh', 'Whitesell', 1355, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Hector', 'Redwine', 1353, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Helene', 'Hargrove', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Herta', 'Blind', 1350, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Irena', 'Byrge', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Ja', 'Moscato', 1355, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Jalisa', 'Keala', 1354, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'January', 'Randazzo', 1351, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Jeniffer', 'Brace', 1352, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Joanne', 'Kingery', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Jovita', 'Fesler', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Jude', 'Brashier', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Justina', 'Stonecipher', 1351, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Katina', 'Abernethy', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Kellie', 'Bail', 1350, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Kristle', 'Vien', 1351, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Lakendra', 'Zick', 1353, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Laronda', 'Coe', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Lashell', 'Abbas', 1354, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Latonia', 'Vanwyk', 1350, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Lavina', 'Ackles', 1355, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Leland', 'Gales', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Leonie', 'Rakowski', 1353, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Lesa', 'Mehaffey', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Levi', 'Basham', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Loraine', 'Bensley', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Louanne', 'Hillwig', 1354, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Louie', 'Scarpelli', 1353, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Loyd', 'Grosz', 1350, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Luanne', 'Boucher', 1353, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Magdalena', 'Ratcliffe', 1354, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Mariette', 'Swick', 1352, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Maris', 'Nee', 1352, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Maryann', 'Weldy', 1351, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Mason', 'Henslee', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Merrie', 'Weideman', 1350, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Mikel', 'Brockway', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Mirta', 'Cannon', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Niki', 'Castano', 1350, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Pamelia', 'Bergquist', 1355, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Rachael', 'Scheff', 1350, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Raisa', 'Benford', 1354, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Ranae', 'Lumpkins', 1355, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Regena', 'Kita', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Richie', 'Petrey', 1351, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Rolf', 'Sharrow', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Rudolph', 'Glickman', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Shaniqua', 'Truesdale', 1352, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Shayna', 'Mahan', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Sherryl', 'Gateley', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Soraya', 'Lashbrook', 1355, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Starr', 'Krogh', 1355, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Stephani', 'Mincy', 1355, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Susan', 'Duffield', 1351, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Sylvia', 'Olander', 1350, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Tawny', 'Jeske', 1351, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Terina', 'Shira', 1354, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Terrence', 'Mustafa', 1354, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Tonisha', 'Vanbeek', 1351, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Trenton', 'Dargan', 1354, 1356);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Twana', 'Willet', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Vena', 'Sedor', 1350, 1359);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Victor', 'Hilliker', 1355, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Willy', 'Frink', 1354, 1358);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Winter', 'Mckillop', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Yen', 'Latimore', 1351, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Zina', 'Bilal', 1353, 1357);
insert into member_dim (uk, first_name, last_name, base_city_uk, membership_uk) values (f_key_gen, 'Zofia', 'Ambler', 1350, 1358);
commit;