drop table result;
create table result(
    roll integer,
    cgpa number(4,2) check(cgpa<=4.00),
    creditcompleted number(4,2),
    totalmark number,
    primary key(roll),
    foreign key(roll) references student(roll) on delete cascade
    );
commit;
