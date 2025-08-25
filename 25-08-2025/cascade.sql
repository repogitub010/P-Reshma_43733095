#cascade

#ex1
use placement;
create table category(cid int primary key,
cname varchar(20) not null
);
insert into category values(1001,'Electronics'),(1002,'Furniture'),(1003,'Home Appliances');
select cname from category;

#ex2
create table department( dno int primary key,
dname varchar(10)
);
insert into department values(2001,'technical'),
(2002,'backend'),
(2003,'HR'),
(2004,'admin');
create table employees (eno int primary key,
ename varchar(30), dno int,
foreign key(dno) references department(dno) 
on delete cascade on update cascade);
insert into employees values(1,'Aakah',2001),
(2,'Bala',2001),
(3,'Kathir',2002),
(4,'Harris',2003),
(5,'Simran',2004),
(6,'Shiny',2002);
update department set dno=2005 where dno=2004;
select * from employees;

#ex3
create table college(clgid int primary key,
clgname varchar(50) not null,
 unique(clgname));
 
create table dept(deptid int primary key,deptname varchar(50) not null,
 clgid int not null, 
 foreign key(clgid) references college(clgid) 
 on delete cascade on update cascade);
 
create table student(stdid int primary key,
stdname varchar(50) not null, 
deptid int not null, 
foreign key(deptid) references dept(deptid)
 on delete cascade on update cascade);
 
insert into college values(45,'Sathyabama'),
(56,'SRM'),
(92,'Hindustan');

insert into dept values(120,'eee',45),
(113,'ece',45),
(326,'cse',56),
(645,'mech',92),
(657,'aero',92);

insert into student values(1,'jerome',120),
(5,'henry',120),
(6,'elliot',113),
(3,'sam',645),
(2,'adam',326),
(9,'samantha',645),
(4,'alan',657),
(7,'sophia',113),
(8,'ashley',326);

delete from dept where deptid=120;
select * from student;



