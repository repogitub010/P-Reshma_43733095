#order by - to sort the values
#group by
use placement;
select * from worker where department='admin' order by salary asc;
select worker_id,salary from worker where department='admin' order by salary desc;
select * from worker where department='admin' order by joining_date;
select count(department) from worker group by department;
select sum(salary) from worker group by department;
select department,min(joining_DAte) as early_join from worker group by department;
select department,count(department) from worker group by department order by department asc;
select department,sum(salary) from worker group by department order by sum(salary) asc;
select department,sum(salary)from worker group by department order by department asc;

#Questions
#1. Count employees not in HR or Admin.
select department,count(first_name) from worker where department not in('Hr','Admin') group by department;

#2. Find the highest salary in each department.
select department,max(salary) from worker group by department;

#right trim left trim 
create table trimming(sno int primary key,firstname varchar(20),middlename varchar(20),lastname varchar(20),age int,remark varchar(25),result varchar(10));
insert into trimming values (1,'  reshanth  ','prakash   ','   kumar',23,'  good','pass '),
(2,' rakesh ','kumar   ','    bachhan',25,'  need to improve ','pass '),
(3,'   aishwarya ','rai   ','     bachhan',45,'  excellent  ','pass '),
(4,' maria ','zeena   ','  johnson',48,'  average ','fail  '),
(5,'    alexander ','graham   ','     bell',65,'  need to improve   ','fail ');
select trim(firstname) as first_name,rtrim(middlename) as middle_name from trimming;
select ltrim(lastname) from trimming;
select trim(firstname),rtrim(middlename),ltrim(lastname),trim(remark),trim(result) from trimming;

#uppercase and lowercase
select upper(first_name) from worker;
select lower(first_name) from worker union select upper(last_name)from worker;
select worker_id,first_name,lower(department) from worker where department= 'hr';
select first_name,upper(department) from worker where salary>50000;

#limit and offset
select * from Worker order by  worker_id limit 3 offset 2;
select worker_id,department from worker limit 5; 
select * from worker order by worker_id limit 7 offset 1;
select worker_id,first_name, row_number() over (order by salary desc) as rn from worker;
select * from(select *,row_number() over (order by worker_id)as  rn from worker ) as temp where rn>5;

#having 
select department,count(department) from worker group by department having count(department)>3;
select department,sum(salary) from worker group by department having sum(salary)>2000000;

#Questions
#1. Find departments with average salary > 100000.
select department,avg(salary) from worker group by department having avg(salary)>100000;

#2. Find departments where max salary is exactly 500000.
select department,max(salary) from worker group by department having max(salary)=500000;

#3. Find departments with more than 1 employee and total salary > 100000.
select department,count(department),sum(salary)from worker group by department having count(department)>1 and sum(salary)>100000; 

#4. Find departments with avg salary between 50000 and 200000.
select department,avg(salary) from worker group by department having avg(salary) between 50000 and 200000;

#subquery
create table award_winners(id int,name varchar(25),award_name varchar(30));
insert into award_winners values(001,'Karthick','Volleyball winners'),(002,'Gopi','Basketball Runners'),(003,'Adib','Oscar winners'),
(004,'Harij','English SpellBee 2nd Runner-up'),(005,'Loki','Volleyball winners'),(006,'Sakthi','Badminton Nationals runners'),
(007,'Iqhlas','Debug winners'),(008,'AK','Basketball runners'),(009,'Kamal','Hackathon runners'),
(010,'Barath','Hackathon winners');

select * from award_winners;
create table students(id int,name varchar(25));
insert into students values(005,'Loki'),(1001,'Srihari'),(1003,'Dinesh'),(001,'Karthick'),(1005,'Tharun'),
(1006,'Vamsi'),(1007,'Monish'),(1008,'Rohith'),(1009,'Alwyn'),(1010,'Akash');

select * from students;
select * from students where id=(select id from award_winners where id=5);
select * from students where id=(select id from award_winners where name="karthick");
select * from award_winners where id=(select id from students where id=1);
select * from award_winners where id=(select id from students where name="Loki");