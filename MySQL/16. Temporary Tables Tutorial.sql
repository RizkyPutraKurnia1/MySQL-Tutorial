-- TEMPORARY TABLES --

create temporary table temporary_table
(
first_name varchar(50),
last_name varchar(50),
hobbies varchar(50));

select*
from temporary_table;

insert into temporary_table
values('Putra', 'Kurniawan', 'Playing a Guitar');

select*
from temporary_table;

select*
from employee_salary;

create temporary table salary_over_50k
select*
from employee_salary
where salary >= 50000;

select*
from salary_over_50k;