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
where name like '%___%'

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

-- Find employees whose salary is NULL.
-- Find employees whose department is NOT NULL.
-- Count employees whose salary is NULL.
-- Find employees where age is NULL.
-- Explain why we cannot use:
-- WHERE salary = NULL
-- What is the correct way to check NULL?
-- Difference between NULL and 0.
-- COUNT
-- Count total employees.
-- Count employees in IT.
-- Count employees whose salary is greater than 50,000.
-- Count employees whose age is greater than 25.
-- Count distinct departments.
-- Count employees having non-null salary.
-- SUM
-- Find total salary of all employees.
-- Find total salary paid to IT employees.
-- Find total salary of HR employees.
-- Find total salary of employees earning more than 60,000.
-- AVG
-- Find average salary.
-- Find average salary of IT employees.
-- Find average age.
-- Find average salary of employees older than 25.
-- MIN
-- Find minimum salary.
-- Find minimum age.
-- Find minimum salary in IT.
-- MAX
-- Find maximum salary.
-- Find employees earning less than 60,000.
-- Find employees earning exactly 60,000.
-- Find employees earning at least 60,000.
-- Find employees earning at most 60,000.
-- Find employees whose salary is not 60,000.
-- Find employees from IT AND earning more than 60,000.
-- Find employees from HR AND age greater than 25.
-- Find employees from IT OR HR.
-- Find employees earning more than 70,000 OR age below 25.
-- Find employees NOT belonging to HR.
-- Find employees NOT earning 50,000.
-- Find employees from IT AND salary greater than 60,000 AND age below 35.
-- Find employees from IT OR Finance earning more than 70,000.
-- 9. BETWEEN
-- Find employees whose salary is between 50,000 and 70,000.
-- Find employees whose age is between 25 and 30.
-- Find employees whose salary is between 40,000 and 60,000.
-- Find employees whose salary is NOT between 50,000 and 70,000.
-- Find employees from IT, HR or Finance.
-- Find employees whose age is 24, 25 or 30.
-- Find employees whose salary is 50,000, 60,000 or 80,000.
-- Find employees not belonging to IT or HR.
-- Find employees whose age is not 24, 25 or 30.
-- Find employees whose name starts with A.
-- Find employees whose name ends with a.
-- Find employees whose name contains i.
-- Find employees whose name contains ra.
-- Find employees whose name has exactly 5 characters.
-- Find employees whose second character is a.
-- Find employees whose name starts with P.
-- Find employees whose name does not start with A.
-- WHERE name LIKE 'A%'
-- WHERE name LIKE '%a'
-- WHERE name LIKE '%i%'
-- 12. NULL — Important
-- Find employees whose department is NULL.
-- Find employees whose salary is NULL.
-- Find employees whose department is NOT NULL.
-- Count employees whose salary is NULL.
-- Find employees where age is NULL.
-- Explain why we cannot use:
-- WHERE salary = NULL
-- What is the correct way to check NULL?
-- Difference between NULL and 0.
-- COUNT
-- Count total employees.
-- Count employees in IT.
-- Count employees whose salary is greater than 50,000.
-- Count employees whose age is greater than 25.
-- Count distinct departments.
-- Count employees having non-null salary.
-- SUM
-- Find total salary of all employees.
-- Find total salary paid to IT employees.
-- Find total salary of HR employees.
-- Find total salary of employees earning more than 60,000.
-- AVG
-- Find average salary.
-- Find average salary of IT employees.
-- Find average age.
-- Find average salary of employees older than 25.
-- MIN
-- Find minimum salary.
-- Find minimum age.
-- Find minimum salary in IT.
-- MAX
-- Find maximum salary.
-- Find employees earning less than 60,000.
-- Find employees earning exactly 60,000.
-- Find employees earning at least 60,000.
-- Find employees earning at most 60,000.
-- Find employees whose salary is not 60,000.
-- Find employees from IT AND earning more than 60,000.
-- Find employees from HR AND age greater than 25.
-- Find employees from IT OR HR.
-- Find employees earning more than 70,000 OR age below 25.
-- Find employees NOT belonging to HR.
-- Find employees NOT earning 50,000.
-- Find employees from IT AND salary greater than 60,000 AND age below 35.
-- Find employees from IT OR Finance earning more than 70,000.
-- 9. BETWEEN
-- Find employees whose salary is between 50,000 and 70,000.
-- Find employees whose age is between 25 and 30.
-- Find employees whose salary is between 40,000 and 60,000.
-- Find employees whose salary is NOT between 50,000 and 70,000.
-- Find employees from IT, HR or Finance.
-- Find employees whose age is 24, 25 or 30.
-- Find employees whose salary is 50,000, 60,000 or 80,000.
-- Find employees not belonging to IT or HR.
-- Find employees whose age is not 24, 25 or 30.
-- Find employees whose name starts with A.
-- Find employees whose name ends with a.
-- Find employees whose name contains i.
-- Find employees whose name contains ra.
-- Find employees whose name has exactly 5 characters.
-- Find employees whose second character is a.
-- Find employees whose name starts with P.
-- Find employees whose name does not start with A.
-- WHERE name LIKE 'A%'
-- WHERE name LIKE '%a'
-- WHERE name LIKE '%i%'
-- 12. NULL — Important
-- Find employees whose department is NULL.
-- Find employees whose salary is NULL.
-- Find employees whose department is NOT NULL.
-- Count employees whose salary is NULL.
-- Find employees where age is NULL.
-- Explain why we cannot use:
-- WHERE salary = NULL
-- What is the correct way to check NULL?
-- Difference between NULL and 0.
-- COUNT
-- Count total employees.
-- Count employees in IT.
-- Count employees whose salary is greater than 50,000.
-- Count employees whose age is greater than 25.
-- Count distinct departments.
-- Count employees having non-null salary.
-- SUM
-- Find total salary of all employees.
-- Find total salary paid to IT employees.
-- Find total salary of HR employees.
-- Find total salary of employees earning more than 60,000.
-- AVG
-- Find average salary.
-- Find average salary of IT employees.
-- Find average age.
-- Find average salary of employees older than 25.
-- MIN
-- Find minimum salary.
-- Find minimum age.
-- Find minimum salary in IT.
-- MAX
-- Find maximum salary.
-- Find maximum age.
-- Find maximum salary in HR.