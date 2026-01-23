-- Create employee table
CREATE TABLE employee (
    emp_id       INT PRIMARY KEY,
    emp_name     VARCHAR(50),
    department   VARCHAR(50),
    salary       NUMERIC(10,2),
    joining_date DATE
);

-- Insert new employee data
INSERT INTO employee (emp_id, emp_name, department, salary, joining_date) VALUES
(201, 'Arjun Malhotra',    'IT',        52000, '2023-02-11'),
(202, 'Meera Nair',        'HR',        26000, '2020-08-19'),
(203, 'Siddharth Rao',     'IT',        34000, '2021-04-10'),
(204, 'Ritika Desai',      'Finance',   60000, '2018-12-05'),
(205, 'Harshit Bansal',    'HR',        17000, '2024-01-22'),
(206, 'Tanya Kapoor',      'Finance',   31000, '2022-05-09'),
(207, 'Gaurav Khanna',     'Sales',     42000, '2020-09-14'),
(208, 'Isha Mathur',       'Sales',     14000, '2023-03-01'),
(209, 'Manoj Patil',       'IT',        29000, '2022-10-18');

-- Query 1: Display all rows
SELECT * FROM employee;

-- Query 2: Average salary by department
SELECT department,AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

-- Query 3: Average salary (salary > 20000)
SELECT department,AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department;

-- Query 4: Average salary > 30000 after filter
SELECT department,AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000;

-- Query 5: Same as above + order desc
SELECT department,AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
