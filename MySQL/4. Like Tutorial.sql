-- LIKE --

select*
from employee_demographics
where first_name = 'Jerry';

select*
from employee_demographics
where first_name LIKE 'Jer%';

select*
from employee_demographics
where first_name LIKE '%er%';

select*
from employee_demographics
where first_name LIKE 'a%';

select*
from employee_demographics
where first_name LIKE '%a%';

select*
from employee_demographics
where first_name LIKE 'a___%';

select*
from employee_demographics
where birth_date LIKE '1989%';