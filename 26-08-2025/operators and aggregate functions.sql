#Relational operators
#Logical operators

create database placement;
use placement;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

#Relational Operators
select * from worker where department='HR';
select * from worker where department!='Admin';
select * from Worker where salary!= 80000;
select * from worker where salary>200000;
select * from Worker where joining_date<'2014-06-11';
select * from worker where salary>=50000 and salary<=200000 and department='HR';
select * from worker where salary<=200000 AND joining_date='2014-02-20 09:00:00';

#Logical Operators
select * from worker where salary>=50000 and salary<=200000 and department='HR';
select * from worker where salary<=200000 AND joining_date='2014-02-20 09:00:00';
select * from worker where department = 'Admin' or department = 'Account';
select * from worker where not department = 'HR';

# IN operator 

select * from worker where worker_id in (1,2,3) and salary >=100000;
select * from worker where worker_id not in (1,2,3) and salary >=100000;
select * from worker where worker_id in (1,3,5,7) and department='HR';
 
 #in between and not in between
 
select * from worker where salary between 30000 and 80000;
select * from worker where salary between 100000 and 200000 and worker_id not in (1,2,3);
select * from worker where salary between 50000 and 100000 and department not in ('HR','Admin');
    
#questions
#Find workers not in HR or Admin with salary between 70000 and 300000.
select * from worker where department not in('HR','Admin') and salary between 70000 and 300000;

#Find workers with first name starting with 'V' and salary greater than or equal to 200000.
select First_name from worker where first_name like 'V%' and salary >=200000;

#Find workers not in Admin with salary < 100000.
select first_name from worker where department not in('Admin')and salary<100000;

 #Aggregate fuctions 
 
 /*
 count
 sum
 min
 max
 avg
 */
 
 select min(salary) as lowest_salary from worker;
 select max(salary) as maximum_salary from worker;
 select count(salary) as total_salaries from worker;
 select sum(salary) as Sum_of_salary from worker;
 select avg(salary) as Average_salary from worker;
 
 # Q)min salary in hr dept
  select min(salary) from worker where department in ('HR');
  
#Questions:
#1. Find the average salary in the Admin department.
select min(salary) from worker where department='Admin';

#2. Total salary for HR and Admin departments combined.
select sum(salary) from worker where department in('HR','Admin');

#3. Count employees whose first name starts with 'V'.
select count(first_name) from worker where first_name like 'v%';

#4. Total salary of employees with salary between 50000 and 200000.
select sum(salary) from worker where salary between 50000 and 200000;

# union
select first_name from worker union select last_name from worker;
select first_name from worker union all select last_name from worker;

#distinct
select distinct(salary) from worker;

#case statement
select first_name,salary,
case
when salary>=300000 thEN 'Rich'
 when salary>=100000 and salary<=300000 then 'Middle' 
 else 'poor'
 end 
 as status_based_on_salary
 from worker;



