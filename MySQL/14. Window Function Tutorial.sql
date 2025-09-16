-- WINDOW FUNCTIONS --

select demo.first_name, demo.last_name, gender, avg(salary) as avg_salary
from employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id
group by demo.first_name, demo.last_name, gender;

select demo.first_name, demo.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id;
    
select demo.first_name, demo.last_name, gender, salary, sum(salary) over(partition by gender order by demo.employee_id) as rolling_total
from employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id;
    
select demo.employee_id, demo.first_name, demo.last_name, gender, salary, row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id;