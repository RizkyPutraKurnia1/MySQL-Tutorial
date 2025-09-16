-- CASE STATEMENT --

select first_name, last_name,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >=50 then "On Death's Door"
end as age_bracket
from employee_demographics;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

select*
from parks_departments;

select first_name, last_name, salary,
case
	when salary < 50000 then salary + (salary * 0.05) # 5% increase
    when salary > 50000 then salary + (salary * 0.07) # 7% increase
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary;