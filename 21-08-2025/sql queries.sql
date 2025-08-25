create database placement;
create table student_detail(
sid int,
sname varchar(20),
dept varchar(20),
marks int,
result varchar(5));

insert into student_detail(sid,sname,dept,marks,result)values(1,'akshaya','cse',49,'pass'),(2,'ben','civil',30,'fail');
insert into student_detail(sid,sname,dept,marks,result)values(3,'catherine','cse',36,'pass'),(4,'damon','mechanical',71,'pass'),(5,'elliot','civil',25,'fail'),(6,'fahim','aeronautical',65,'pass');
select * from student_detail;
select sid,result from student_detail;
update student_detail set marks=72 where sid=4;
update student_ detail set sid = 5, smarks = 32 WHERE sid = 2;

show tables from placement;
desc student_detail;

alter table student_detail drop result;