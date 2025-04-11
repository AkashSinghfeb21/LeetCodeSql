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