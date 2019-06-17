select * from student;
select * from stcontact;
select * from stinformation;
select * from result;
select * from oneone;
select * from teacher;
select * from tcontact;

select * from stinformation where blood_group='B+';
select * from student where gender='Male';
select roll,name from student where gender='Male';
select name from student where gender='Female';

//modify table query:----
alter table result add totalmark integer;
alter table result rename column totalmark to total_marks;
alter table result drop column total_marks;
alter table result add totalmark number(10);
alter table result drop column totalmark;

//aggregate function query:----
select avg(salary) from teacher;    	can be added //as something
select max(salary) from teacher;	can be added //as something
select min(salary) from teacher;	can be added //as something
select sum(salary) from teacher;	can be added //as something
select sum(salary) as total_payablesalary from teacher;		added //as total_payablesalary
select * from teacher where salary in(select min(salary) from teacher);
select * from teacher where salary in(select max(salary) from teacher);
select id,name from teacher where salary in(select max(salary) from teacher);
select count(*) from stinformation;
select count(distinct blood_group) from stinformation;
select count(*) from stinformation where blood_group='B+';
select count(blood_group) from stinformation where blood_group='B+';
select count(blood_group) as BPOS_BLOOD from stinformation where blood_group='B+';

//group by query:----
select count(*) from student group by gender;
select gender,count(*) from student group by gender;
select home_district,count(*) from stinformation group by home_district;
select blood_group,count(*) from stinformation group by blood_group;