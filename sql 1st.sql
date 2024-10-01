CREATE DATABASE student;
use student;
CREATE TABLE student123(stu_id int, 
stuname varchar(50), address varchar(50),
date_of_enroll date);
-- retrive dekhna (select)
-- select colum_name from table_name
select * from student123;
select stu_id, stuname from student123;


-- insert into 
-- use to insert the data in table
-- syntx
-- insert into tablename(column1,column2,......) values (value1,value2,value3......)


insert into student123(stu_id, stuname, address ,date_of_enroll)
 values (01,'great','vashsali','2002-01-30'),(02,'ankit','jaipur','2003-03-24');

 select * from student123; 
 
 insert into student123(stu_id, stuname, address )
 values (03,'eat','vashsali');
 select * from student123; 
 
 CREATE DATABASE universitys;
use universitys;
 create table colleges(stu_id int, 
stuname varchar(50), address varchar(50),
date_of_enroll date);



insert into colleges(stu_id, stuname, address ,date_of_enroll)
 values (01,'great','vasli','2002-01-30'),(02,'ankit','jaipur','2003-03-24');
   select * from colleges; 
update colleges set stu_id=3 where stuname='ankit';															



 CREATE DATABASE universe;
use universe;
 create table earth(stu_id int, 
stuname varchar(50), address varchar(50),
date_of_enroll date);



insert into earth(stu_id, stuname, address ,date_of_enroll)
 values (01,'great','vasli','2002-01-30'),(02,'ankit','jaipur','2003-03-24');
   select * from earth; 
update earth set stu_id=3 where stuname='ankit';		

alter table earth add column moon varchar(30);


alter table earth modify column stuname varchar(30);
alter table earth rename column stuname to stusname;
alter table earth drop moon;


use universe;
CREATE TABLE mars (
    mars_soil LONGTEXT
);
use universe;
delete from earth where stu_id=01;
                                  
   create database regex;
   use regex;
   create table regex12(stu_id int, 
stuname varchar(50), address varchar(50),
date_of_enroll date);
insert into regex12(stu_id, stuname, address ,date_of_enroll)
 values (05,'greatest','vvashsali','2002-01-30'),(06,'ajankit','jaipur','2003-03-24');
 select * from regex12;
 update regex12 set stu_id=3 where stuname='ajankit';
 select * from regex12;
 
 alter table regex12 add column moon varchar(30);
 
 alter table regex12 modify column stuname varchar(30);
alter table regex12 rename column stuname to stusname;
alter table regex12 drop moon;
delete from regex12 where stu_id=3;
select * from regex12;

create database company;
use company;
create table employe(employ_id int , first_name varchar(40) , last_name  
varchar(40) , position varchar(40) , salary int, hiredate date);

insert into employe(employ_id , first_name , last_name
 , position , salary , hiredate) values 
 (101,'john','doe','developer',60000,'2020-03-15'),
 (102,'jane','smith','manager',75000,'2019-06-01'),
 (103,'emily','johnson','developer',58000,'2018-11-12'),
 (104,'michael','brown','intern',30000,'2022-01-10'),
(105,'sarah','davis','designer',55000,'2021-07-30'),
(106,'david','willson','developer',62000,'2021-05-25'),
 (107,'laura','martine','manager',70000,'2017-12-15'),
 (108,'james','anderson','intern',29000,'2023-02-20'),
 (107,'lisa','thomas','designer',50000,'2020-04-10'),
 (110,'kavis','tylor','developer',64000,'2022-04-05');
 
 select * from employe;
 select first_name, last_name from employe;
 select * from employe where employ_id=101;
 select * from employe where salary>50000;
 select count(*) FROM employe where position= 'manager';
 select max(salary) from employe;
 select * from employe where hiredate>'2020-01-01';
 select * from employe order by first_name;
 select avg(salary)  from employe;
 select * from employe where salary =75000;
 delete from employe where employ_id=105;
 update employe set salary=60000 where employ_id=103;
 update employe set position='developer' where position='junior developer';
 update employe set salary = salary*1.10 where hiredate='2019-01-01';
 alter table employe add column email varchar(50);
 alter table employe modify column salary decimal(12,2);
 alter table employe rename column last_name to family_name;
 alter table employe drop email;
 
 
 -- constraints
 -- not null
 -- uniquw
 -- primary kye
 -- default '2024-07-03' getdate()
 -- check( >=10)
 -- foreign key
 -- auto_increment
 
 use company;
 create table department(dept_id auto_increment int primary key,  salary_date date default '2024-03-02',
 age int check(age>=18),departmentname varchar (20) not null, phnnum int unique);
 insert into department(dept_id , salary_date , age , departmentname , phnnum) values
 (1,'2023-02-04',19,'ajgreat',2400),
  (2,'2023-02-04',29,'ajgreawt',5000);
 
 select * from department;   


create database joints;
use joints;
create table product(proname varchar (50), supply_id int);
insert into product value ("planet orat oatmilk",1),
("honey nuts frosted flakes",2),
("magnum double tab",5),
("sour patch marshmallows",3),
("ferroro eggs",4);  
 select * from product;
 
 
 create table supplier( supplier_id int,suppliername varchar(50));
 insert into supplier values ( 1,"john"),
 (2,"anne"),
 (3,"robert"),
 (4,"jerry"),
 (5,"tim");
  create table supply( supplier_id int,suppliername varchar(50));
  
  
  
 create table supplies( supply_id int,suppliername varchar(50));
 
 insert into supplier values ( 1,"john"),
 (2,"anne"),
 (3,"robert"),
 (4,"jerry"),
 (5,"tim");
 
 select * from supplies;
 
 update supplies set supply_id=6 where suppliername="robert";
 
 update supplies set supply_id=7 where suppliername="jerry";
 
 -- join 
 -- inner join
 select product.proname,supplies.suppliername from product 
 inner join supplies 
 on product.supply_id=supplies.supply_id;
 
 select product.proname,supplies.suppliername from
 product left join supplies on product.supply_id=supplies.supply_id;
 
  select product.proname,supplies.suppliername from
 product right join supplies on product.supply_id=supplies.supply_id;
 
 -- full outer
  select product.proname,supplies.suppliername from
 product left join supplies on product.supply_id=supplies.supply_id
 union select product.proname,supplies.suppliername from
 product right join supplies on product.supply_id=supplies.supply_id;
 
 -- cross join
  select product.proname,supplies.suppliername from
 product cross join supplies ;
 
 
-- natural join

select product.proname,supplies.suppliername 
from product natural join supplies;

-- self join
select a.proname,b.supply_id from product as a,product as b where 
a.supply_id=b.supply_id;



