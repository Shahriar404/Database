drop table oneone;
drop table result;
drop table stcontact;
drop table stinformation;
drop table student;
drop table tcontact;
drop table teacher;


create table teacher(
    id integer,
    name varchar(20) not null,
    salary number(7) check(salary>=20000 and salary <=90000),
    primary key(id)
    );

insert into teacher (id,name,salary) values (1,'Akib Shahriyar',20000);
insert into teacher (id,name,salary) values (2,'Abdul Aziz Sarker',25000);
insert into teacher (id,name,salary) values (3,'Md Milon',30000);
insert into teacher (id,name,salary) values (4,'Shamimur Rahman',35000);
insert into teacher (id,name,salary) values (5,'Jarin Fairose',40000);

create table tcontact(
    id integer,
    phone_no number(11) unique,
    email varchar(30) unique,
    primary key(id),
    foreign key(id) references teacher(id)
    );
insert into tcontact (id,phone_no,email) values (1,017729,'akib@gmail.com');
insert into tcontact (id,phone_no,email) values (2,018842,'aziz@gmail.com');
insert into tcontact (id,phone_no,email) values (3,015528,'milon@gmail.com');
insert into tcontact (id,phone_no,email) values (4,018669,'shamimur@gmail.com');
insert into tcontact (id,phone_no,email) values (5,013344,'jarin@gmail.com');


create table student(
    roll integer,
    name varchar(25),
    gender varchar(10),
    adviser_id integer,
    primary key(roll),
    foreign key(adviser_id) references teacher(id)
    );

insert into student (roll,name,gender,adviser_id) 
             values (1507091,'Ohida Binte Amin','Female',1);

insert into student (roll,name,gender,adviser_id)
             values (1507092,'Shishir Ahmmed','Male',5);

insert into student (roll,name,gender,adviser_id) 
             values (1507093,'Tahmina Sultana Priya','Female',1);

insert into student (roll,name,gender,adviser_id)
             values (1507094,'Rifat Ahmed','Male',5);

insert into student (roll,name,gender,adviser_id)
             values (1507095,'Raisa Tahsin','Female',2);

insert into student (roll,name,gender,adviser_id)
             values (1507096,'Md Tareq Rahman Joy','Male',4);

insert into student (roll,name,gender,adviser_id) 
             values (1507097,'Md Marufur Rahman','Male',1);

insert into student (roll,name,gender,adviser_id)
             values (1507098,'Mahmudul Hasan','Male',3);

insert into student (roll,name,gender,adviser_id) 
             values (1507099,'Md Samin Yeasar','Male',1);

insert into student (roll,name,gender,adviser_id)
             values (1507100,'Saeed Anwar Khan','Male',2);

	
create table stcontact(
    roll integer,
    phone_no varchar(14) unique,
    email varchar(35) unique,
    present_address varchar(30),
    primary key(roll),
    foreign key(roll) references student(roll) on delete cascade  
   );

insert into stcontact (roll, phone_no, email, present_address) 
		values (1507091,'+8801770263252','ohida.amin2010@gmail.com','BRH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507092,'+8801521300336','shishirahmmed30@gmail.com','LSH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507093,'+8801679357283','tahminasultanapriya14@gmail.com','BRH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507094,'+8801521329993','rifatahmed034@gmail.com','AEH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507095,'+8801748535404','tahsinraisa1@gmail.com','BRH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507096,'+8801620601009','xxxxxxx@gmail.com','LSH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507097,'+8801819435695','inkmarufnayem@gmail.com','LSH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507098,'+8801754899448','zestmahmud@gmail.com','FHH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507099,'+8801786852035','pptt@gmail.com','FHH');
insert into stcontact (roll, phone_no, email, present_address) 
		values (1507100,'+8801827854137','saeedkhan.kuet.cse@gmail.com','FHH');




create table stinformation(
   roll integer,
   blood_group varchar(5),
   father varchar(15),
   mother varchar(15),
   college varchar(15),
   home_district varchar(15),
   foreign key(roll) references student(roll) on delete cascade,
   primary key(roll)
   );
	
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507091,'A+','aaaa','bbaa','ccaa','Mymensingh');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507092,'O+','aabb','bbbb','ccbb','Rajshahi');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507093,'B+','aacc','bbcc','cccc','Comilla');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507094,'O+','aadd','bbdd','ccdd','Comilla');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507095,'A+','aaee','bbee','ccee','Chittagong');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507096,'A+','aaff','bbff','ccff','Chittagong');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507097,'B+','aacc','bbcc','cccc','Jalokathi');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507098,'O+','aadd','bbdd','ccdd','Comilla');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507099,'xx','aaee','bbee','ccee','Rangpur');
insert into stinformation (roll, blood_group, father, mother, college, home_district) 
		values (1507100,'B+','aaff','bbff','ccff','Dhaka');

create table result(
    roll integer,
    cgpa number(4,2) check(cgpa<=4.00),
    creditcompleted number(4,2),
    primary key(roll),
    foreign key(roll) references student(roll) on delete cascade
    );
insert into result (roll,cgpa,creditcompleted) values (1507091,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507092,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507093,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507094,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507095,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507096,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507097,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507098,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507099,0.0,0.0);
insert into result (roll,cgpa,creditcompleted) values (1507100,0.0,0.0);

create table oneone(
    roll integer,
    cse1103 number(3) check(cse1103<=100),
    subgo varchar(7),
    subpo number(4,2) check(subpo<=4.00),
    cse1109 number(3) check(cse1109<=100),
    subgt varchar(7),
    subpt number(4,2) check(subpt<=4.00),
    eee1101 number(3) check(eee1101<=100),
    subgth varchar(7),
    subpth number(4,2) check(subpth<=4.00),
    phy1103 number(3) check(phy1103<=100),
    subgf varchar(7),
    subpf number(4,2) check(subpf<=4.00),
    hum1107 number(3) check(hum1107<=100),
    subgfi varchar(7),
    subpfi number(4,2) check(subpfi<=4.00),
    gpa number(4,2) check(gpa<=4.00),
    tcredit number(4,2),
    primary key(roll),
    foreign key(roll) references student(roll) on delete cascade
    );

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

insert into oneone (roll,cse1103,subgo,subpo,cse1109,subgt,subpt,eee1101,subgth,subpth,phy1103,subgf,subpf,hum1107,subgfi,subpfi) 
			values (1507091,88,'A+',4.00,67,'B+',3.25,73,'A-',3.50,77,'A',3.75,81,'A+',4.00);
insert into oneone (roll,cse1103,subgo,subpo,cse1109,subgt,subpt,eee1101,subgth,subpth,phy1103,subgf,subpf,hum1107,subgfi,subpfi)
			values (1507092,90,'A+',4.00,70,'A-',3.50,73,'A-',3.50,74,'A-',3.50,87,'A+',4.00);
insert into oneone (roll,cse1103,subgo,subpo,cse1109,subgt,subpt,eee1101,subgth,subpth,phy1103,subgf,subpf,hum1107,subgfi,subpfi)
			values (1507093,90,'A+',4.00,70,'A-',3.50,73,'A-',3.50,76,'A',3.75,77,'A',3.75);

commit;