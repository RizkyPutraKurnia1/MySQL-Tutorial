-- UNIONS --

select first_name, last_name
from employee_demographics
UNION all
select first_name, last_name
from employee_salary;

select first_name, last_name, 'Old Man' as label
from employee_demographics
where age > 40 and gender = 'male'
union
select first_name, last_name, 'Old Woman' as label
from employee_demographics
where age > 40 and gender != 'male'
union
select first_name, last_name, 'Highly Paid Employee' as label
from employee_salary
where salary > 70000
order by first_name, last_name;