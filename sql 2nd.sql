create database joins;
use joins;
create table employe(employe_id int, employename varchar(50));
insert into employe values (1,"ajgreat"),(2,"ajankit"),(3,"anita"),(4,"bhanu");
create table department (department_id int , departmentname varchar(50));
insert into department values (1,"tina"),(2,"jahanvi"),(3,"rupa"),(4,"garima");
select * from employe;
select * from department; 


update employe set employe_id=6 where employename="ajankit";
select employe.employename,department.departmentname from employe inner join department
where employe.employe_id=department.department_id;


select employe.employename,department.departmentname from employe left join department
on employe.employe_id=department.department_id;



select employe.employename,department.departmentname from employe left join department
on employe.employe_id=department.department_id
union	select employe.employename,department.departmentname from employe right join department
on employe.employe_id=department.department_id;


select d.departmentname,count(e.employe_id) as employe_count from department d inner join 
employe e on d.department_id=e.employe_id group by d.departmentname;

select e.employename from employe e 
left join 

