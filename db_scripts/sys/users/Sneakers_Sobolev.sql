create user Sneakers_Sobolev
IDENTIFIED by Sneakers_Sobolev1
DEFAULT TABLESPACE sysaux 
TEMPORARY TABLESPACE temp
account unlock;

alter user Sneakers_Sobolev quota UNLIMITED on sysaux;

grant create session to Sneakers_Sobolev; 
grant create table to Sneakers_Sobolev;
grant create view to Sneakers_Sobolev; 
grant create procedure to Sneakers_Sobolev;