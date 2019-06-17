drop table oneone;
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
