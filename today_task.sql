-- Create table emp1
CREATE TABLE emp1 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT
);

-- Insert data into emp1
INSERT INTO emp1 (employee_id, name, department, salary, age) VALUES
(1, 'Amit', 'IT', 60000, 25),
(2, 'Rahul', 'HR', 50000, 28),
(3, 'Neha', 'IT', 75000, 30),
(4, 'Priya', 'Finance', 80000, 32),
(5, 'Ravi', 'HR', 45000, 24);

insert into emp1 values (6, 'uday', null, 50000, 24)
insert into emp1 values (7, 'uday', 'HR', null, 24);
insert into emp1 values (8, 'uday', 'DEV', 50000, null);


-- Display all employees.
select employee_id, name, department, salary, age from emp1

-- Display only employee names.
select name from emp1

-- Display employee name and salary.
select name,salary from emp1

-- Display employee ID, name and department.
select employee_id,name,department from emp1

-- Display name, age and salary.
select name,age,salary from emp1

-- Display all columns using *.
select * from emp1

-- Display only the department column.
select department from emp1

-- Display only the salary column.
select salary from emp1

-- Display employee name with salary.
select name,salary from emp1

-- Display employee name and department.
select name,department from emp1

-- Display salary multiplied by 12 as annual salary.
select (salary*12) as salary from emp1

-- Display employee name and salary + 5000 as revised salary.
select name,(salary+5000) as revised_salary from emp1

-- Display employee name and age + 5.
select name,(age+5) age from emp1

-- Rename salary as monthly_salary.
select salary as monthly_salary from emp1

-- Rename salary * 12 as annual_salary.
select (salary * 12) as annual_salary from emp1

-- Find employees whose salary is greater than 50,000.
select * from emp1 
where salary >50000

-- Find employees whose salary is less than 60,000.
select * from emp1 
where salary <60000

-- Find employees whose salary is equal to 50,000.
select * from emp1 
where salary = 50000

-- Find employees whose age is greater than 25.
select * from emp1 
where age >25

-- Find employees whose age is less than or equal to 30.
select * from emp1 
where age < = 30

-- Find employees from the IT department.
select * from emp1 
where department = 'IT'

-- Find employees from HR.
select * from emp1 
where department ='HR'

-- Find employees whose salary is greater than 70,000.
select * from emp1 
where salary > 70000

-- Find employees whose age is exactly 30.
select * from emp1 
where age=30

-- Find employees whose salary is not 50,000.
select * from emp1 
where salary != 50000

-- Find employees from IT earning more than 60,000.
select * from emp1 
where department='IT' and salary > 60000

-- Find employees from HR whose salary is less than 50,000.
select * from emp1 
where department ='HR' and salary < 50000

-- Find employees older than 25 earning more than 60,000.
select * from emp1 
where age>25 and salary >60000

-- Find employees younger than 30 earning more than 50,000.
select * from emp1 
where age <30 and salary> 50000

-- Find employees from Finance earning more than 70,000.
select * from emp1 
where department='Finance' and salary >70000

-- Display all unique departments.
select distinct department from emp1

-- Display all unique ages.
select distinct age from emp1

-- Display all unique salaries.
select distinct salary from emp1

-- Find the number of unique departments.
select count(distinct departments) from emp1

-- Find the number of unique salaries.
select count(distinct salary) from emp1

-- Find unique combinations of department and salary.
select distinct salary,  department from emp1

-- Find unique combinations of department and age.
select distinct department , age from emp1

-- Display employees in ascending order of salary.
select * from emp1 
order by salary

-- Display employees in descending order of salary.
select * from emp1 
order by salary desc

-- Display employees by age ascending.
select * from emp1 
order by age 

-- Display employees by age descending.
select * from emp1 
order by age desc

-- Display employees alphabetically by name.
select * from emp1 
order by name

-- Display employees in reverse alphabetical order.
select * from emp1 
order by name desc

-- Sort employees by department.
select * from emp1 
order by department

-- Sort employees by salary descending.
select * from emp1 
order by salary desc

-- Sort employees by department ascending and salary descending.
select * from emp1 
order by salary desc, department asc

-- Sort employees by age ascending and salary descending.
select * from emp1 
order by age asc , salary desc

-- Display the highest-paid employee first.
select * from emp1 
order by salary desc 
limit 1

-- Display the lowest-paid employee first.
select * from emp1 
order by salary asc 
limit 1

-- Find the first 5 employees.
select * from emp1 
limit 5

-- Find the top 3 highest-paid employees.
select * from emp1 
order by salary desc 
limit 3

-- Find the top 5 lowest-paid employees.
select * from emp1 
order by salary 
limit 5

-- Find the first 10 employees ordered by salary.
select * from emp1 
order by salary 
limit 10

-- Find the second-highest salary using ORDER BY and LIMIT.
select * from emp1 
order by salary desc 
limit 1 offset 1

-- Find the top 3 salaries.
select * from emp1 
order by salary desc 
limit 3

-- Find the employee with the highest salary.
select * from emp1 
order by salary desc 
limit 1

-- Find the employee with the lowest salary.
select * from emp1 
order by salary 
limit 1

-- Find the second-highest-paid employee.
select * from emp1 
order by salary desc 
limit 1 offset 1

-- Find the third-highest-paid employee.
select * from emp1 
order by salary desc 
limit 1 offset 2

-- Find employees earning more than 60,000.
select * from emp1 
where salary > 60000

-- Find employees earning less than 60,000.
select * from emp1 
where salary < 60000

-- Find employees earning exactly 60,000.
select * from emp1 
where salary =60000

-- Find employees earning at least 60,000.
select * from emp1 
where salary >= 60000

-- Find employees earning at most 60,000.
select * from emp1 
where salary <= 60000

-- Find employees whose salary is not 60,000.
select * from emp1 
where salary != 60000

-- Find employees from IT AND earning more than 60,000.
select * from emp1 
where department = 'IT' and salary > 60000

-- Find employees from HR AND age greater than 25.
select * from emp1 
where department ='HR' and age > 25

-- Find employees from IT OR HR.
select * from emp1 
where department = 'IT' or department ='HR'

-- Find employees earning more than 70,000 OR age below 25.
select * from emp1 
where salary > 70000 or age < 25

-- Find employees NOT belonging to HR.
select * from emp1 
where department != 'HR'

-- Find employees NOT earning 50,000.
select * from emp1 
where salary != 50000

-- Find employees from IT AND salary greater than 60,000 AND age below 35.
select * from emp1 
where department ='IT' and salary >60000 and age < 35

-- Find employees from IT OR Finance earning more than 70,000.
select * from emp1 
where department = 'IT' or department='Finance' and salary > 70000

-- 9. BETWEEN
-- Find employees whose salary is between 50,000 and 70,000.
select * from emp1 
where salary between 50000 and 70000

-- Find employees whose age is between 25 and 30.
select * from emp1 
where age between 25 and 30

-- Find employees whose salary is between 40,000 and 60,000.
select * from emp1 
where salary between 40000 and 60000

-- Find employees whose salary is NOT between 50,000 and 70,000.
select * from emp1 
where not salary between 50000 and 70000

-- Find employees from IT, HR or Finance.
select * from emp1 
where department in ('IT','HR','Finance')

-- Find employees whose age is 24, 25 or 30.
select * from emp1 
where age in (24,25,30)

-- Find employees whose salary is 50,000, 60,000 or 80,000.
select * from emp1 
where salary in (50000,60000,80000)

-- Find employees not belonging to IT or HR.
select * from emp1 
where department not in ('IT','HR')

-- Find employees whose age is not 24, 25 or 30.
select * from emp1 
where age not in (24,25,30)

-- Find employees whose name starts with A
select * from emp1 
where name like 'A%'

-- Find employees whose name ends with a.
select * from emp1 
where name like '%a'

-- Find employees whose name contains i.
select * from emp1 
where name like '%i%'

-- Find employees whose name contains ra.
select * from emp1 
where name like '%ra%'

-- Find employees whose name has exactly 5 characters.
select * from emp1 
where name like '_____'

-- Find employees whose second character is a.
select * from emp1 
where name like '_a%'

-- Find employees whose name starts with P.
select * from emp1 
where name like 'p%'

-- Find employees whose name does not start with A.
select * from emp1 
where name not like 'A%'

-- 12. NULL — Important
-- Find employees whose department is NULL.
select * from emp1
where department is null

-- Find employees whose salary is NULL.
select * from emp1
where salary is null

-- Find employees whose department is NOT NULL.
select * from emp1
where department is not null

-- Count employees whose salary is NULL.
select count(*) from emp1
where salary is null

-- Find employees where age is NULL.
select * from emp1
where age is null

-- COUNT
-- Count total employees.
select count(*) from emp1

-- Count employees in IT.
select count(*) from emp1

-- Count employees whose salary is greater than 50,000.
select count(*) from emp1 
where salary > 50000

-- Count employees whose age is greater than 25.
select count(*) from emp1
where age > 25

-- Count distinct departments.
select count(distinct department) from emp1

-- Count employees having non-null salary.
select count(*) from emp1
where salary is not null

-- SUM
-- Find total salary of all employees.
select sum(salary) from emp1

-- Find total salary paid to IT employees.
select sum(salary) from emp1
where department = 'IT'

-- Find total salary of HR employees.
select sum(salary) from emp1
where department='HR'

-- Find total salary of employees earning more than 60,000.
select count(salary) from emp1
where salary > 60000

-- AVG
-- Find average salary.
select avg(salary) from emp1

-- Find average salary of IT employees.
select avg(salary) from emp1
where department = 'IT'

-- Find average age.
select avg(age) from emp1

-- Find average salary of employees older than 25.
select avg(salary) from emp1
where age > 25

-- MIN
-- Find minimum salary.
select min(salary) from emp1

-- Find minimum age.
select min(age) from emp1

-- Find minimum salary in IT.
select min(salary) from emp1
where department = 'IT'

-- -- max
-- Find maximum salary.
select max(salary) from emp1

-- Find maximum age.
select max(age) from emp1

-- Find maximum salary in HR.
select max(salary) from emp1
where department='HR'

-- 14. GROUP BY — Very Important
-- Find the number of employees in each department.
select department,count(*) from emp1
group by department

-- Find total salary paid by each department.
select department,sum(salary) from emp1
group by department

-- Find average salary of each department.
select department,avg(salary) from emp1
group by department

-- Find maximum salary in each department.
select department,max(salary) from emp1
group by department

-- Find minimum salary in each department.
select department,min(salary) from emp1
group by department

-- Find number of employees by age.
select age,count(*) from emp1
group by age

-- Find total salary by department.
select department,sum(salary) from emp1
group by department

-- Find average age by department.
select department,avg(age) from emp1
group by department

-- Intermediate
-- Find departments having more than 2 employees.
select department,count(*) from emp1
group by department
having count(*)>2

-- Find departments where total salary is greater than 100,000.
select department,sum(salary) from emp1
group by department 
having sum(salary) > 100000

-- Find departments where average salary is greater than 60,000.
select department,avg(salary) from emp1
group by department
having avg(salary) > 60000

-- Find departments where maximum salary is greater than 70,000.
select department,max(salary) from emp1
group by department
having max(salary) >70000

-- Find departments where minimum salary is less than 50,000.
select department,min(salary) from emp1
group by department
having min(salary) < 50000

-- Find the department with the highest average salary.
select department,avg(salary) as avg_salary from emp1
group by department
order by avg_salary desc
limit 1

-- Find the department with the lowest average salary.
select department,avg(salary) as avg_salary from emp1
group by department
order by avg_salary asc
limit 1
-- 15. HAVING
-- Find departments having more than 2 employees.
-- Find departments having at least 2 employees.
-- Find departments where average salary is greater than 60,000.
-- Find departments where total salary is greater than 100,000.
-- Find departments where maximum salary is greater than 70,000.
-- Find departments where minimum salary is greater than 40,000.
-- Find departments where average age is greater than 25.
-- Find departments having total salary between 100,000 and 200,000.
-- Find departments having more than 3 employees and average salary greater than 50,000.
-- Find departments where total salary is greater than 150,000 and employee count is greater than 2.


-- 16. WHERE vs HAVING
-- Find departments having employees whose salary is greater than 50,000.
-- Find departments where employees earning more than 50,000 are more than 2.
-- Find departments whose average salary is greater than 60,000.
-- Find departments having at least 2 employees with salary greater than 50,000.


CREATE TABLE departs (
    department_id   INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE emps (
    employee_id   INT PRIMARY KEY,
    name          VARCHAR(50) NOT NULL,
    department_id INT,
    salary        NUMERIC(10, 2) NOT NULL
);

INSERT INTO departs (department_id, department_name)
VALUES
    (10, 'IT'),
    (20, 'HR'),
    (30, 'Finance'),
    (40, 'Marketing'),
    (50, 'Sales'),
    (60, 'Operations'),
    (70, 'Research');

INSERT INTO emps (employee_id, name, department_id, salary)
VALUES
    (1,  'Amit',   10, 60000),
    (2,  'Rahul',  20, 50000),
    (3,  'Neha',   10, 75000),
    (4,  'Priya',  30, 80000),
    (5,  'Ravi',   40, 45000),
    (6,  'Anjali', 10, 65000),
    (7,  'Vikram', 20, 55000),
    (8,  'Sneha',  80, 72000),
    (9,  'Kiran',  40, 48000),
    (10, 'Arjun',  90, 60000),
    (11, 'Pooja',  10, 55000),
    (12, 'Manoj',  30, 90000),
    (13, 'Divya',  20, 50000),
    (14, 'Suresh', 50, 52000);

-- 18. INNER JOIN Questions
-- Display employee name and department name.
select e.name,d.department_name from emps e
inner join departs d 
on d.department_id=e.department_id

-- Display employee name, salary and department name.
select e.name,e.salary,d.department_name
from emps e
inner join departs d on d.department_id=e.department_id 

-- Find all employees who have a matching department.
select *
from emps e
inner join departs d on d.department_id=e.department_id

-- Find employees working in IT.
select *
from emps e
inner join departs d on d.department_id=e.department_id
where d.department_name='IT'

-- Find employees working in HR.
select *
from emps e
inner join departs d on d.department_id=e.department_id
where d.department_name='HR'

-- Display employee name and department name ordered by salary.
select e.name,d.department_name,salary from emps e
inner join departs d 
on d.department_id=e.department_id
order by salary

-- Find employees earning more than 60,000 along with their department.
select *
from emps e
inner join departs d on d.department_id=e.department_id
where e.salary > 60000

-- Find the average salary of each department.
select d.department_name,avg(salary) as avg_salary
from emps e
inner join departs d on d.department_id=e.department_id
group by d.department_name

-- Find the number of employees in each department.
select d.department_name,count(*) as no_of
from emps e
inner join departs d on d.department_id=e.department_id
group by d.department_name

-- Find the highest-paid employee in each department.
select d.department_name,sum(salary) as sum_salary
from emps e
inner join departs d on d.department_id=e.department_id
group by d.department_name
order by sum_salary desc
limit 1

-- 19. LEFT JOIN Questions
-- Display all employees with their department names.
select e.name,d.department_name
from emps e
left join departs d on d.department_id=e.department_id

-- Display all employees even if they don't have a department.
select *
from emps e
left join departs d on d.department_id=e.department_id

-- Find employees who don't have a matching department.
select *
from emps e
left join departs d on d.department_id=e.department_id
where d.department_id is null

-- Find departments with no employees.
select * 
from departs d
left join emps e on d.department_id=e.department_id
where e.employee_id is null
-- Display employee name, department name and salary.
select e.name,d.department_name,e.salary
from emps e
left join departs d on d.department_id=e.department_id

-- Count employees in each department including departments with zero employees.
select d.department_name,count(e.employee_id)
from departs d
left join emps e  on d.department_id=e.department_id
group by d.department_name 

-- 20. RIGHT JOIN Questions
-- Display all departments and matching employees.
select *
from emps e
right join departs d on d.department_id=e.department_id

-- Find departments that don't have employees.
select *
from departs d
right join emps e on d.department_id=e.department_id
where e.employee_id is null

-- Count employees for every department.
select d.department_name,count(employee_id)
from emps e
right join departs d on d.department_id=e.department_id
group by d.department_name

-- Display all departments even if no employee belongs to them.
select *
from emps e
right join departs d on d.department_id=e.department_id

-- 21. FULL OUTER JOIN
-- Display all employees and all departments.

-- Find employees without departments.
-- Find departments without employees.
-- Find all matching and non-matching records.
-- 22. JOIN + WHERE Questions
-- Find employees working in IT.
-- Find employees earning more than 60,000 and display their department.
-- Find employees from HR earning more than 45,000.
-- Find employees from IT or Finance.
-- Find employees whose salary is above their department's threshold.