set serveroutput on

create or replace trigger set_priority 
before insert on news for each row
begin

:new.priority:=1;
update news set priority=priority+1;


end;
/



