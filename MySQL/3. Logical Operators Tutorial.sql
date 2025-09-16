-- Logical Operators (AND, OR, NOT) --

select*
from employee_demographics
where first_name = 'Leslie' and age = 44;

select*
from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55;

select*
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male';

select*
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';

select*
from employee_demographics
where first_name = 'Leslie' or first_name = 'Jerry';