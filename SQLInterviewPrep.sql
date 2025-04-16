create database aloo;
use aloo;
-- ddl dml dcl dql
-- 1)data definition language
-- it represents the whole table structure/schema
-- create drop alter
create table test 
(id int primary key,
name varchar(250),
city varchar(200));

alter table test
rename column name to full_name;

drop table test;

-- 2)data manipulation language
-- it manipulates the data which stored inside table
-- insert delete update

insert into test values
(1,"Akash Singh","Delhi");

update test
set city = "Mumbai"
where id = 1;

delete from test 
where id = 1;

-- 3)data control language
-- used to control access into database
-- grant revoke

grant select on aloo.test to root;

revoke select on aloo.test from root;

-- 4)data query language
-- used to fetch data from databases
-- select

select * from test;

-- sql joins left right inner full self

create table Employees
(
id int primary key,
name varchar(200),
dept_id int,
foreign key(dept_id) references Department(dept_id)
);

create table Department
(
dept_id int primary key,
dept_name varchar(255)
);

insert into Employees values
(
1,"Alice",10
),
(2,"Bob",20),
(3,"Charlie",30);

insert into Department values
(
10,"HR"
),
(20,"IT"),
(30,"Marketing");

update Department 
set dept_id = 40 where dept_name ="Sales";

select * from Department;

insert into department values
(40,"Sales");

select * from Employees;

-- left join
select a.id,a.name,b.dept_id,b.dept_name 
from Employees as a
left join Department as b
on a.dept_id = b.dept_id; 

-- right join
select a.id,a.name,b.dept_id,b.dept_name
from Employees as a 
right join Department as b
on a.dept_id = b.dept_id;

-- full outer join

select *
from Employees as a
left join Department as b
on a.dept_id = b.dept_id
UNION
select *
from Employees as a
right join Department as b
on a.dept_id = b.dept_id;



insert into Employees values
(4,"John",null);


-- inner join 
select a.id,a.name,b.dept_id,b.dept_name
from Employees as a
inner join Department as b
on a.dept_id = b.dept_id;