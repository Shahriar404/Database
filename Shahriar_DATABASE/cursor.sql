set serveroutput on
declare
cursor c_name is
    select roll,name from student where adviser_id=2;

begin
for c_record in c_name
loop
dbms_output.put_line('Roll = ' || c_record.roll || ' Student Name = ' || c_record.name);
end loop;
end;
/