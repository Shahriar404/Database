set serveroutput on
create or replace trigger tr
before insert or update of cgpa on result for each row
begin
if :new.cgpa<2.00
then :new.grade:='F';
elsif :new.cgpa>=2.00 and :new.cgpa<2.50
then :new.grade:='D';
elsif :new.cgpa>=2.50 and :new.cgpa<3.00
then :new.grade:='C';
elsif :new.cgpa>=3.00 and :new.cgpa<3.50
then :new.grade:='B';
elsif :new.cgpa>=3.50 and :new.cgpa<4.00
then :new.grade:='A';
else
:new.grade:='A+';
end if;
end;
/
