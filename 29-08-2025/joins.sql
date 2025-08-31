/*
joins
inner join
outer join 
   =>left outer join
   =>right outer join
   =>full outer join
cross join 
natural join
*/
 
use org123;
create table student(sid int,sname varchar(25),sdept varchar(25));  
insert into student values(101,'Arun','cse'),(102,'varun','ece'),(103,'karunya','mech');
create table courses(cid int,cname varchar(25)); 
insert into courses values(5001,'aiml');
insert into courses values(5002,'data scince');

# cross join   
select * from student cross join courses;

#natural join
select * from student natural join courses;

#inner join
create table result(sid int,score int);
insert into result values(101,90),(102,85),(107,95);
insert into result values(109,40),(103,45);
select * from student inner join result where student.sid=result.sid;

#outer join
select * from student left outer join result on(student.sid=result.sid);
select * from student right outer join result on(student.sid=result.sid);

#full outer join
select * from student full outer join result on (student.id=result.id);
