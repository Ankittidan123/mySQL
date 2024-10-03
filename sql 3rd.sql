create database views;
use views;
create table emp(
emp_id int,
emp_name varchar(50),
depart_id int,
manager_id int,
title varchar(50),
salary int);

insert into emp
(emp_id, emp_name, depart_id, title, salary) 
values(1, "Alice", 1, "Manager", 90000);

create index index1 on emp(emp_name);
 create index index2 on emp(emp_id,emp_name);
create fulltext index index3 on emp(emp_name); -- fulltext index
 create unique index index6 on emp(emp_id); -- unique index
 create clustered index index4 on table_name(column_name); -- clusterd index
 create nonclusteres index index5 on tabe_name(column_name); -- non clustered index



-- view
create view view_name as 
select employee_name, employee_id from employees
where department='sales';

-- shortcut
-- simplification
-- restricting access
-- easy to understand the database

-- update
update view_name set departmentname='HR'
where departmentname='Finance';

-- retrieve
select employeename from view_name where address='jaipur';

-- index
-- to retrieve the specific data


-- types
-- 1. single column
-- 2. composite index(multi column index)
-- 3. full text index \\ ex- movie
-- 4. unique index
-- 5. clustered index    ex. first page of book
-- 6.  non clustered index  ex. last page of book


 create index index_name on tablee_name(column_name); -- //single column 
 create index index_name on tablle_name(column1,column2); -- composite index
 create fulltext index  index_name on table_name(column_name); -- fulltext index
 create unique index index_name on table_name(column_name); -- unique index
 create clustered index index_name on table_name(column_name); -- clusterd index
 create nonclusteres index on index_name table_name(column_name); -- non clustered index
 