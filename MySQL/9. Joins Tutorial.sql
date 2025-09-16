-- JOINS --
-- INNER JOINS --

select*
from employee_demographics;

select*
from employee_salary;

select*
from employee_demographics as demo
inner join employee_salary as sal
	on demo.employee_id = sal.employee_id;
    
select demo.employee_id, age, occupation
from employee_demographics as demo
inner join employee_salary as sal
	on demo.employee_id = sal.employee_id;
    
-- OUTER JOINS --

select*
from employee_demographics as demo
right join employee_salary as sal
	on demo.employee_id = sal.employee_id;


select*
from employee_demographics as demo
left join employee_salary as sal
	on demo.employee_id = sal.employee_id;
    
-- SELF JOINS --

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.employee_id as last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;


-- JOINING MULTIPLE TABLES TOGETHER --

select*
from employee_demographics as demo
inner join employee_salary as sal
on demo.employee_id = sal.employee_id;

select*
from parks_departments;

select*
from employee_demographics as demo
inner join employee_salary as sal
	on demo.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id;