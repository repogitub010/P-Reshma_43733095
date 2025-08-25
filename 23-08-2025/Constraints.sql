#constraints
#not null 
#unique 
#primary key 
#check index 
#foreign key
#default

create database person;
use person;
create table detail(id int not null ,first_name varchar(50) not null,
middle_name varchar(50),
last_name varchar(50) not null,
age int not null,
unique(id)
);

alter table detail add constraint unique(last_name);
desc detail;
show indexes from detail;

alter table detail drop INDEX LAST_NAME;

alter table detail add constraint primary key (id);
alter table detail add constraint check (18<=age<=130);
insert into detail values(1,'shaik','yusuf','khan',18);
insert into detail values(2,'vijay',null,'kumar',130);
insert into detail values(3,'rajini',null,'kanth',150);
select * from detail;

create table category(cid int primary key , 
cname varchar(20) not null
);
insert into category values(1001,'Electronics'),(1002,'Furniture');
select * from category;

create table product(pid int primary key,
pname varchar(25) not null,
cid int,
foreign key(cid) references category(cid)
);
insert into product values(901,'Smart Watch',1001),(902,'Cupboard',1002),(903,'TV',1001);
select * from product;

create table orders(oid int primary key,
 oname varchar(30) not null,
 cid int not null ,
 pid int not null,
 foreign key(cid) references category(cid), 
foreign key(pid) references product(pid)
 );
 
INSERT INTO orders (oid,order_date,qty,pid,cid) VALUES
(5001, '2025-08-22',1,901,1001),
(5002, '2025-08-23',2,902,1002),
(5003, '2025-08-23',4,903,1001);

delete from category where cid=1001;
update category set cid=1003 where cid=1001;
select * from category;

select * from orders;