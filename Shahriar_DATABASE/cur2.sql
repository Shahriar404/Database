create or replace procedure pr as
cursor c is
select roll,cse1103,cse1109,eee1101,phy1103,hum1107 from oneone;
r integer;
s1 number;
s2 number;
s3 number;
s4 number;
s5 number;
t number;
begin
open c;
loop
fetch c into r,s1,s2,s3,s4,s5;
exit when c%notfound;
t:=s1+s2+s3+s4+s5;
update result set totalmark=t where roll=r;
end loop;
end;
/