select * from employees
select * from projects
select * from departments
-- Find the employee with the highest salary.
select * 
from employees
where salary = (select max(salary) from employees)

-- Find all employees earning more than the average salary.
select * 
from employees
where salary > (select avg(salary) from employees)

-- Find all employees who work in the IT department.
select *
from employees 
where department_id = (select department_id from departments  where department_name ='IT')

-- Find the department of employee 'Priya'.
select *
from departments
where department_id = (select department_id from employees where employee_name='Priya')

-- Find employees earning the same salary as 'Kiran'.
SELECT * 
FROM employees
WHERE salary = (
    SELECT salary 
    FROM employees 
    WHERE LOWER(employee_name) = 'kiran'
)
AND LOWER(employee_name) != 'kiran';

-- Find all employees who work in departments located in 'Mumbai'.
select *
from employees
where department_id = (
	select department_id
	from departments
	where location = 'Mumbai'
)

-- Find the project with the highest budget.
select *
from projects
where budget = (select max(budget) from projects )

-- Find employees whose salary is greater than 'Rahul'’s salary.
select *
from employees
where salary > (select salary from employees where employee_name='Rahul')
-- Intermediate level
-- Find employees who work in departments having at least one project
select * 
from employees
where department_id in (select distinct department_id from projects)

select * 
from employees e
where exists(select * from projects p where e.department_id = p.department_id) 

-- Find departments that do not have any employees.
select *
from departments d
where not exists (
	select department_id 
	from employees e 
	where e.department_id = d.department_id 
)

-- Find departments that have a project with a budget greater than 600,000.
select * 
from departments d
where exists(
	select department_id
	from projects p
	where p.department_id=d.department_id and p.budget>600000
)

-- Find employees who earn more than the average salary of the IT department.
select * 
from employees 
where salary >(
	select avg(e.salary) 
	from employees e 
	join departments d on e.department_id = d.department_id 
	where department_name='IT'
)

-- Find employees who are managers.
select *
from employees m
where exists (
	select * 
	from employees e 
	where e.manager_id = m.employee_id
)

-- Find employees who are not managers.
select *
from employees m 
where not exists (
	select *
	from employees e
	where e.manager_id = m.employee_id
)
