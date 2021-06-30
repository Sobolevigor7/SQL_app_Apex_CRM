create or replace function f_key_gen return number
as
    uk number;
Begin
    uk:='';
    select s_unique_key.nextval into uk from dual;
    return uk;
End;