-- 1 SELECT
-- 1. Display all employees.
SELECT * FROM Employees;

-- 2. Display only employee name and salary.
SELECT first_name, last_name, salary FROM Employees;

-- 3. Display unique department names.
SELECT DISTINCT department_name FROM Departments;

-- 4. Display employees hired after 2022.
SELECT * FROM Employees WHERE joining_date > '2022-12-31';

-- 5. Display employees whose salary is greater than ₹50,000.
SELECT * FROM Employees WHERE salary > 50000;

-- 6. Display employees working in the IT department.
SELECT * FROM Employees WHERE department_id = 1;

-- 7. Display employee IDs and names.
SELECT employee_id, first_name, last_name FROM Employees;

-- 8. Display employees whose salary is between ₹30,000 and ₹60,000.
SELECT * FROM Employees WHERE salary BETWEEN 30000 AND 60000;

-- 9. Display employees whose city is Hyderabad.
SELECT * FROM Employees WHERE city = 'Hyderabad';

-- 10. Display employee names in alphabetical order.
SELECT first_name, last_name FROM Employees ORDER BY first_name ASC;

-- 2. WHERE
-- 1. Employees older than 30.
SELECT * FROM Employees WHERE age > 30;

-- 2. Employees younger than 25.
SELECT * FROM Employees WHERE age < 25;

-- 3. Employees from Bangalore.
SELECT * FROM Employees WHERE city = 'Bangalore';

-- 4. Employees not from Hyderabad.
SELECT * FROM Employees WHERE city <> 'Hyderabad';

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
SELECT * FROM Employees ORDER BY first_name;

-- 4. Sort by joining date.
SELECT * FROM Employees ORDER BY joining_date;

-- 5. Sort by department and salary.
SELECT * FROM Employees ORDER BY department_id, salary DESC;

-- 6. Highest-paid employee.
SELECT * FROM Employees ORDER BY salary DESC LIMIT 1;

-- 7. Lowest-paid employee.
SELECT * FROM Employees ORDER BY salary ASC LIMIT 1;

-- 8. Sort employees by age.
SELECT * FROM Employees ORDER BY age;

-- 9. Sort employees by city.
SELECT * FROM Employees ORDER BY city;

-- 10. Sort by experience.
SELECT * FROM Employees ORDER BY experience_years DESC;

-- 4. LIMIT / TOP
-- 1. First 5 employees.
SELECT * FROM Employees LIMIT 5;

-- 2. Top 10 salaries.
SELECT * FROM Employees ORDER BY salary DESC LIMIT 10;

-- 3. Top 3 youngest employees.
SELECT * FROM Employees ORDER BY age ASC LIMIT 3;

-- 4. Top 5 oldest employees.
SELECT * FROM Employees ORDER BY age DESC LIMIT 5;

-- 5. Second highest salary.
SELECT DISTINCT salary FROM Employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

-- 6. Third highest salary.
SELECT DISTINCT salary FROM Employees ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- 7. First employee alphabetically.
SELECT * FROM Employees ORDER BY first_name ASC LIMIT 1;

-- 8. First 10 employees from the IT department.
SELECT * FROM Employees WHERE department_id = 1 LIMIT 10;

-- 9. Highest-paid HR employee.
SELECT * FROM Employees WHERE department_id = 2 ORDER BY salary DESC LIMIT 1;

-- 10. Last 5 employees using ORDER BY.
SELECT * FROM Employees ORDER BY employee_id DESC LIMIT 5;

-- 5. DISTINCT
-- 1. Unique departments.
SELECT DISTINCT department_id FROM Employees;

-- 2. Unique cities.
SELECT DISTINCT city FROM Employees;

-- 3. Unique designations.
SELECT DISTINCT designation FROM Employees;

-- 4. Unique salaries.
SELECT DISTINCT salary FROM Employees;

-- 5. Count distinct departments.
SELECT COUNT(DISTINCT department_id) FROM Employees;

-- 6. Count distinct cities.
SELECT COUNT(DISTINCT city) FROM Employees;

-- 7. Distinct joining years.
SELECT DISTINCT YEAR(joining_date) FROM Employees;

-- 8. Distinct manager IDs.
SELECT DISTINCT manager_id FROM Employees;

-- 9. Unique project names.
SELECT DISTINCT project_name FROM Projects;

-- 10. Unique employee roles (designations).
SELECT DISTINCT designation FROM Employees;

-- 6. Aggregate Functions
-- 1. Count employees.
SELECT COUNT(*) FROM Employees;

-- 2. Total salary.
SELECT SUM(salary) FROM Employees;

-- 3. Average salary.
SELECT AVG(salary) FROM Employees;

-- 4. Maximum salary.
SELECT MAX(salary) FROM Employees;

-- 5. Minimum salary.
SELECT MIN(salary) FROM Employees;

-- 6. Count employees in IT.
SELECT COUNT(*) FROM Employees WHERE department_id = 1;

-- 7. Highest bonus.
SELECT MAX(bonus) FROM Employees;

-- 8. Lowest bonus.
SELECT MIN(bonus) FROM Employees;

-- 9. Average experience.
SELECT AVG(experience_years) FROM Employees;

-- 10. Count distinct departments.
SELECT COUNT(DISTINCT department_id) FROM Employees;

-- 7. GROUP BY
-- 1. Count employees in each department.
SELECT department_id, COUNT(*) AS emp_count
FROM Employees GROUP BY department_id;

-- 2. Average salary per department.
SELECT department_id, AVG(salary) AS avg_salary
FROM Employees GROUP BY department_id;

-- 3. Maximum salary per department.
SELECT department_id, MAX(salary) AS max_salary
FROM Employees GROUP BY department_id;

-- 4. Minimum salary per department.
SELECT department_id, MIN(salary) AS min_salary
FROM Employees GROUP BY department_id;

-- 5. Total salary paid per city.
SELECT city, SUM(salary) AS total_salary
FROM Employees GROUP BY city;

-- 6. Count employees in each city.
SELECT city, COUNT(*) AS emp_count
FROM Employees GROUP BY city;

-- 7. Count employees by gender.
SELECT gender, COUNT(*) AS emp_count
FROM Employees GROUP BY gender;

-- 8. Count employees by designation.
SELECT designation, COUNT(*) AS emp_count
FROM Employees GROUP BY designation;

-- 9. Average age by department.
SELECT department_id, AVG(age) AS avg_age
FROM Employees GROUP BY department_id;

-- 10. Total bonus by department.
SELECT department_id, SUM(bonus) AS total_bonus
FROM Employees GROUP BY department_id;

-- 8. HAVING
-- 1. Departments with more than 5 employees.
SELECT department_id, COUNT(*) AS emp_count
FROM Employees GROUP BY department_id HAVING COUNT(*) > 5;

-- 2. Departments with average salary > ₹60,000.
SELECT department_id, AVG(salary) AS avg_salary
FROM Employees GROUP BY department_id HAVING AVG(salary) > 60000;

-- 3. Cities with more than 10 employees.
SELECT city, COUNT(*) AS emp_count
FROM Employees GROUP BY city HAVING COUNT(*) > 10;

-- 4. Departments with total salary > ₹5,00,000.
SELECT department_id, SUM(salary) AS total_salary
FROM Employees GROUP BY department_id HAVING SUM(salary) > 500000;

-- 5. Departments with max salary > ₹1,00,000.
SELECT department_id, MAX(salary) AS max_salary
FROM Employees GROUP BY department_id HAVING MAX(salary) > 100000;

-- 6. Departments with minimum salary > ₹40,000.
SELECT department_id, MIN(salary) AS min_salary
FROM Employees GROUP BY department_id HAVING MIN(salary) > 40000;

-- 7. Cities with average age < 30.
SELECT city, AVG(age) AS avg_age
FROM Employees GROUP BY city HAVING AVG(age) < 30;

-- 8. Departments with exactly 3 employees.
SELECT department_id, COUNT(*) AS emp_count
FROM Employees GROUP BY department_id HAVING COUNT(*) = 3;

-- 9. Cities with total bonuses > ₹2,00,000.
SELECT city, SUM(bonus) AS total_bonus
FROM Employees GROUP BY city HAVING SUM(bonus) > 200000;

-- 10. Departments with average experience > 5 years.
SELECT department_id, AVG(experience_years) AS avg_exp
FROM Employees GROUP BY department_id HAVING AVG(experience_years) > 5;

-- 9. String Functions
-- 1. Convert names to uppercase.
SELECT UPPER(first_name) AS name_upper FROM Employees;

-- 2. Convert names to lowercase.
SELECT LOWER(first_name) AS name_lower FROM Employees;

-- 3. Length of each employee name.
SELECT first_name, LENGTH(first_name) AS name_length FROM Employees;

-- 4. First three characters of each name.
SELECT first_name, LEFT(first_name, 3) AS first_three FROM Employees;

-- 5. Last two characters of each name.
SELECT first_name, RIGHT(first_name, 2) AS last_two FROM Employees;

-- 6. Replace 'a' with '@' in names.
SELECT REPLACE(first_name, 'a', '@') AS modified_name FROM Employees;

-- 7. Remove leading spaces.
SELECT LTRIM(first_name) AS trimmed_name FROM Employees;

-- 8. Remove trailing spaces.
SELECT RTRIM(last_name) AS trimmed_name FROM Employees;

-- 9. Concatenate first and last names.
SELECT CONCAT(TRIM(first_name), ' ', TRIM(last_name)) AS full_name FROM Employees;

-- 10. Reverse employee names.
SELECT REVERSE(first_name) AS reversed_name FROM Employees;

-- 10. Date Functions
-- 1. Current date.
SELECT CURDATE();

-- 2. Current timestamp.
SELECT NOW();

-- 3. Employees hired this year.
SELECT * FROM Employees WHERE YEAR(joining_date) = YEAR(CURDATE());

-- 4. Calculate employee experience (years since joining).
SELECT employee_id, first_name,
       TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS calculated_experience
FROM Employees;

-- 5. Calculate employee age.
-- (No date_of_birth column exists in this schema, so the stored `age` column is used directly.)
SELECT employee_id, first_name, age FROM Employees;

-- 6. Employees hired last month.
SELECT * FROM Employees
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
  AND joining_date < CURDATE();

-- 7. Add 30 days to joining date.
SELECT employee_id, joining_date, DATE_ADD(joining_date, INTERVAL 30 DAY) AS plus_30_days
FROM Employees;

-- 8. Month of joining.
SELECT employee_id, MONTH(joining_date) AS joining_month FROM Employees;

-- 9. Year of joining.
SELECT employee_id, YEAR(joining_date) AS joining_year FROM Employees;

-- 10. Weekday of joining.
SELECT employee_id, DAYNAME(joining_date) AS joining_weekday FROM Employees;

-- 11. CASE Statement
-- 1. Classify salaries as High, Medium or Low.
SELECT first_name, salary,
  CASE
    WHEN salary >= 80000 THEN 'High'
    WHEN salary >= 50000 THEN 'Medium'
    ELSE 'Low'
  END AS salary_category
FROM Employees;

-- 2. Classify employees as Junior, Mid-Level or Senior.
SELECT first_name, experience_years,
  CASE
    WHEN experience_years < 2 THEN 'Junior'
    WHEN experience_years <= 6 THEN 'Mid-Level'
    ELSE 'Senior'
  END AS LEVEL
FROM Employees;

-- 3. Pass or Fail based on marks.
SELECT first_name, marks,
  CASE WHEN marks >= 40 THEN 'Pass' ELSE 'Fail' END AS result
FROM Employees;

-- 4. Categorize employees by age.
SELECT first_name, age,
  CASE
    WHEN age < 25 THEN 'Young'
    WHEN age < 40 THEN 'Middle-aged'
    ELSE 'Senior'
  END AS age_category
FROM Employees;

-- 5. Display tax slabs based on salary.
SELECT first_name, salary,
  CASE
    WHEN salary > 100000 THEN '30%'
    WHEN salary > 50000  THEN '20%'
    ELSE '10%'
  END AS tax_slab
FROM Employees;

-- 6. Categorize attendance.
SELECT first_name, attendance,
  CASE
    WHEN attendance = 'Excellent' THEN 'Outstanding'
    WHEN attendance = 'Good' THEN 'Satisfactory'
    ELSE 'Needs Improvement'
  END AS attendance_category
FROM Employees;

-- 7. Display bonus eligibility.
SELECT first_name, bonus,
  CASE WHEN bonus > 10000 THEN 'Eligible' ELSE 'Not Eligible' END AS bonus_eligibility
FROM Employees;

-- 8. Display performance ratings (based on marks).
SELECT first_name, marks,
  CASE
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 75 THEN 'B'
    WHEN marks >= 60 THEN 'C'
    ELSE 'D'
  END AS performance_rating
FROM Employees;

-- 9. Convert gender codes to text.
SELECT first_name, gender,
  CASE
    WHEN gender = 'M' THEN 'Male'
    WHEN gender = 'F' THEN 'Female'
    ELSE gender
  END AS gender_full
FROM Employees;

-- 10. Display department abbreviations.
SELECT first_name, department_id,
  CASE department_id
    WHEN 1 THEN 'IT'
    WHEN 2 THEN 'HR'
    WHEN 3 THEN 'FIN'
    WHEN 4 THEN 'MKT'
    WHEN 5 THEN 'OPS'
    WHEN 6 THEN 'R&D'
    ELSE 'N/A'
  END AS dept_abbr
FROM Employees;

-- 12. INNER JOIN
-- 1. Employee with department.
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.department_id;

-- 2. Employee with salary (no join needed - single table).
SELECT first_name, last_name, salary FROM Employees;

-- 3. Customers with orders.
SELECT c.customer_name, o.order_id, o.order_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- 4. Products with categories.
SELECT p.product_name, c.category_name
FROM Products p
INNER JOIN Categories c ON p.category_id = c.category_id;

-- 5. Students with courses.
SELECT s.student_name, c.course_name
FROM Students s
INNER JOIN Courses c ON s.course_id = c.course_id;

-- 6. Employees with projects.
SELECT e.first_name, p.project_name
FROM Employees e
INNER JOIN Projects p ON e.project_id = p.project_id;

-- 7. Orders with customer cities.
SELECT o.order_id, c.city
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

-- 8. Books with authors (no join needed - single table).
SELECT title, author FROM Books;

-- 9. Payments with invoices.
SELECT p.payment_id, i.invoice_id, i.amount, p.amount_paid
FROM Payments p
INNER JOIN Invoices i ON p.invoice_id = i.invoice_id;

-- 10. Employees with manager names (self join).
SELECT e.first_name AS employee, m.first_name AS manager
FROM Employees e
INNER JOIN Employees m ON e.manager_id = m.employee_id;

-- 13. LEFT JOIN
-- 1. Employees without departments.
SELECT e.*
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- 2. Customers without orders.
SELECT c.*
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 3. Products without sales.
SELECT p.*
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;

-- 4. Departments without employees.
SELECT d.*
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- 5. Students without courses.
SELECT s.*
FROM Students s
LEFT JOIN Courses c ON s.course_id = c.course_id
WHERE c.course_id IS NULL;

-- 6. Suppliers without products.
SELECT s.*
FROM Suppliers s
LEFT JOIN Products p ON s.product_id = p.product_id
WHERE p.product_id IS NULL;

-- 7. Books never borrowed.
SELECT * FROM Books WHERE is_borrowed = FALSE;

-- 8. Projects without employees.
SELECT p.*
FROM Projects p
LEFT JOIN Employees e ON p.project_id = e.project_id
WHERE e.employee_id IS NULL;

-- 9. Invoices without payments.
SELECT i.*
FROM Invoices i
LEFT JOIN Payments p ON i.invoice_id = p.invoice_id
WHERE p.payment_id IS NULL;

-- 10. Managers without team members.
SELECT m.*
FROM Employees m
LEFT JOIN Employees e ON m.employee_id = e.manager_id
WHERE e.employee_id IS NULL;

-- 14. RIGHT JOIN
-- 1. All departments including empty ones.
SELECT d.department_name, e.first_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.department_id;

-- 2. All products including unsold.
SELECT p.product_name, o.order_id
FROM Orders o
RIGHT JOIN Products p ON o.product_id = p.product_id;

-- 3. All customers including no orders.
SELECT c.customer_name, o.order_id
FROM Orders o
RIGHT JOIN Customers c ON o.customer_id = c.customer_id;

-- 4. All students including no results (courses without matching students).
SELECT c.course_name, s.student_name
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;

-- 5. All suppliers (including those with no product).
SELECT s.supplier_name, p.product_name
FROM Products p
RIGHT JOIN Suppliers s ON p.product_id = s.product_id;

-- 6. All courses (including those with no students).
SELECT c.course_name, s.student_name
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;

-- 7. All projects (including those with no employees).
SELECT p.project_name, e.first_name
FROM Employees e
RIGHT JOIN Projects p ON e.project_id = p.project_id;

-- 8. All invoices (including those with no payments).
SELECT i.invoice_id, p.payment_id
FROM Payments p
RIGHT JOIN Invoices i ON p.invoice_id = i.invoice_id;

-- 9. All managers (including those with no direct reports).
SELECT DISTINCT m.employee_id, m.first_name AS manager
FROM Employees e
RIGHT JOIN Employees m ON e.manager_id = m.employee_id;

-- 10. All categories (including those with no products).
SELECT c.category_name, p.product_name
FROM Products p
RIGHT JOIN Categories c ON p.category_id = c.category_id;

-- 15. FULL OUTER JOIN
-- 1. Employees and departments.
SELECT e.first_name, d.department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id
UNION
SELECT e.first_name, d.department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.department_id;

-- 2. Customers and orders.
SELECT c.customer_name, o.order_id, o.order_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_name, o.order_id, o.order_amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 3. Students and courses.
SELECT s.student_name, c.course_name
FROM Students s
LEFT JOIN Courses c ON s.course_id = c.course_id
UNION
SELECT s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;

-- 4. Suppliers and products.
SELECT s.supplier_name, p.product_name
FROM Suppliers s
LEFT JOIN Products p ON s.product_id = p.product_id
UNION
SELECT s.supplier_name, p.product_name
FROM Suppliers s
RIGHT JOIN Products p ON s.product_id = p.product_id;

-- 5. Books and borrowers.
-- (No separate "borrowers" table exists; is_borrowed flag stands in for borrow status, so no join is needed.)
SELECT title, author, is_borrowed FROM Books;

-- 6. Invoices and payments.
SELECT i.invoice_id, i.amount, p.payment_id, p.amount_paid
FROM Invoices i
LEFT JOIN Payments p ON i.invoice_id = p.invoice_id
UNION
SELECT i.invoice_id, i.amount, p.payment_id, p.amount_paid
FROM Invoices i
RIGHT JOIN Payments p ON i.invoice_id = p.invoice_id;

-- 7. Products and inventory.
-- (No separate "inventory" table exists; Orders used as a proxy for stock movement.)
SELECT p.product_name, o.order_id
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
UNION
SELECT p.product_name, o.order_id
FROM Products p
RIGHT JOIN Orders o ON p.product_id = o.product_id;

-- 8. Managers and employees.
SELECT m.first_name AS manager, e.first_name AS employee
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id
UNION
SELECT m.first_name AS manager, e.first_name AS employee
FROM Employees e
RIGHT JOIN Employees m ON e.manager_id = m.employee_id;

-- 9. Projects and assignments.
SELECT p.project_name, e.first_name
FROM Projects p
LEFT JOIN Employees e ON p.project_id = e.project_id
UNION
SELECT p.project_name, e.first_name
FROM Projects p
RIGHT JOIN Employees e ON p.project_id = e.project_id;

-- 10. Categories and products.
SELECT c.category_name, p.product_name
FROM Categories c
LEFT JOIN Products p ON c.category_id = p.category_id
UNION
SELECT c.category_name, p.product_name
FROM Categories c
RIGHT JOIN Products p ON c.category_id = p.category_id;

-- 16. SELF JOIN
-- 1. Employees with managers.
SELECT e.first_name AS employee, m.first_name AS manager
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id;

-- 2. Employees with same salary.
SELECT e1.first_name AS employee1, e2.first_name AS employee2, e1.salary
FROM Employees e1
JOIN Employees e2 ON e1.salary = e2.salary AND e1.employee_id < e2.employee_id;

-- 3. Employees in same department.
SELECT e1.first_name AS employee1, e2.first_name AS employee2, e1.department_id
FROM Employees e1
JOIN Employees e2 ON e1.department_id = e2.department_id AND e1.employee_id < e2.employee_id;

-- 4. Employees in same city.
SELECT e1.first_name AS employee1, e2.first_name AS employee2, e1.city
FROM Employees e1
JOIN Employees e2 ON e1.city = e2.city AND e1.employee_id < e2.employee_id;

-- 5. Duplicate employee names.
SELECT e1.first_name, e1.last_name, e1.employee_id, e2.employee_id
FROM Employees e1
JOIN Employees e2 ON e1.first_name = e2.first_name
                  AND e1.last_name = e2.last_name
                  AND e1.employee_id < e2.employee_id;

-- 6. Same joining year.
SELECT e1.first_name AS employee1, e2.first_name AS employee2, YEAR(e1.joining_date) AS joining_year
FROM Employees e1
JOIN Employees e2 ON YEAR(e1.joining_date) = YEAR(e2.joining_date)
                  AND e1.employee_id < e2.employee_id;

-- 7. Employees older than their manager.
SELECT e.first_name AS employee, e.age AS employee_age,
       m.first_name AS manager, m.age AS manager_age
FROM Employees e
JOIN Employees m ON e.manager_id = m.employee_id
WHERE e.age > m.age;

-- 8. Employees with salary greater than their manager.
SELECT e.first_name AS employee, e.salary AS employee_salary,
       m.first_name AS manager, m.salary AS manager_salary
FROM Employees e
JOIN Employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

-- 9. Reporting hierarchy.
SELECT e.employee_id, e.first_name AS employee, m.first_name AS reports_to
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id
ORDER BY m.employee_id;

-- 10. Employees with same designation.
SELECT e1.first_name AS employee1, e2.first_name AS employee2, e1.designation
FROM Employees e1
JOIN Employees e2 ON e1.designation = e2.designation AND e1.employee_id < e2.employee_id;