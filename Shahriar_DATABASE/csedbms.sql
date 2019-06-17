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
commit;