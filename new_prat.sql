-- 1 SELECT
-- 1. Display all employees.
SELECT * FROM Employees;

-- 2. Display only employee name and salary.
SELECT concat(first_name,' ', last_name) as employee_name, salary FROM Employees;

-- 3. Display unique department names.
SELECT DISTINCT d.department_name
FROM Employees e
JOIN Departments d
  ON e.department_id = d.department_id;
-- 4. Display employees hired after 2022.
SELECT * FROM Employees WHERE joining_date > '2022-12-31';

-- 5. Display employees whose salary is greater than ₹50,000.
SELECT * FROM Employees WHERE salary > 50000;

-- 6. Display employees working in the IT department.
SELECT e.*,d.department_name 
FROM Employees e join Departments d
  ON e.department_id = d.department_id
  where d.department_name= 'IT';

-- 7. Display employee IDs and names.
SELECT employee_id, first_name, last_name FROM Employees;

-- 8. Display employees whose salary is between ₹30,000 and ₹60,000.
SELECT * FROM Employees WHERE salary BETWEEN 30000 AND 60000;
SELECT * FROM Employees WHERE salary >=30000 AND salary <=60000;

-- 9. Display employees whose city is Hyderabad.
SELECT * FROM Employees WHERE city = 'Hyderabad';

-- 10. Display employee names in alphabetical order.
SELECT CONCAT(first_name,' ',last_name) as employee_names FROM Employees ORDER BY employee_names ASC;

-- 2. WHERE
-- 1. Employees older than 30.
SELECT * FROM Employees WHERE age > 30;

-- 2. Employees younger than 25.
SELECT * FROM Employees WHERE age < 25;

-- 3. Employees from Bangalore.
SELECT * FROM Employees WHERE city = 'Bangalore';

-- 4. Employees not from Hyderabad.
SELECT * FROM Employees WHERE city != 'Hyderabad';

-- 5. Salaries greater than ₹75,000.
SELECT * FROM Employees WHERE salary > 75000;

-- 6. Salaries less than ₹40,000.
SELECT * FROM Employees WHERE salary < 40000;

-- 7. Employees hired before 2021.
SELECT * FROM Employees WHERE joining_date < '2021-01-01';

-- 8. Employees hired after January 1, 2024.
SELECT * FROM Employees WHERE joining_date > '2024-01-01';

-- 9. Female employees.
SELECT * FROM Employees WHERE gender = 'Female';

-- 10. Employees with more than 5 years of experience.
SELECT * FROM Employees WHERE experience_years > 5;

-- 3. ORDER BY
-- 1. Sort employees by salary (ascending).
SELECT * FROM Employees ORDER BY salary ASC;

-- 2. Sort employees by salary (descending).
SELECT * FROM Employees ORDER BY salary DESC;

-- 3. Sort by employee name.
SELECT CONCAT(first_name,' ',last_name) as employee_names FROM Employees ORDER BY employee_names ASC;

-- 4. Sort by joining date.
SELECT * FROM Employees ORDER BY joining_date;

-- 5. Sort by department and salary.
SELECT * FROM Employees ORDER BY department_id, salary DESC;

-- 6. Highest-paid employee.
SELECT * FROM Employees ORDER BY salary DESC LIMIT 1;

-- 7. Lowest-paid employee.
SELECT * FROM Employees ORDER BY salary ASC LIMIT 1;