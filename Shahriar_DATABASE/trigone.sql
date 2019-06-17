set serveroutput on
create or replace trigger trig2
before insert or delete or update on oneone
for each row
declare
tp number(4,2);
gp oneone.gpa%type;
ch number(4,2);
cg result.cgpa%type;
tc result.creditcompleted%type;
ntg number(4,2);
ntc number(4,2);
ncg number(4,2);

begin
ch := 0;
tp := :new.subpo*3.0+:new.subpt*3.0+:new.subpth*3.0+:new.subpf*3.0+:new.subpfi*3.0;
if(:new.subpo>0.0)
then ch := ch + 3.0;
end if;
if(:new.subpt>0.0)
then ch := ch + 3.0;
end if;
if(:new.subpth>0.0)
then ch := ch + 3.0;
end if;
if(:new.subpf>0.0)
then ch := ch + 3.0;
end if;
if(:new.subpfi>0.0)
then ch := ch + 3.0;
end if;
gp := tp/ch;
:new.gpa := gp;
:new.tcredit := ch;

select result.cgpa,result.creditcompleted into cg,tc from result where result.roll=:new.roll;
ntg := cg*tc+tp;
ntc := tc+ch;
ncg := ntg/ntc;

update result set result.cgpa=ncg where result.roll=:new.roll;
update result set result.creditcompleted=ntc where result.roll=:new.roll;
end;
/