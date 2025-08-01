create database testing;

use testing;


CREATE TABLE data (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT,
    joining_date DATE
);

INSERT INTO data (emp_id, name, department, salary, age, joining_date) VALUES
(101, 'Riya', 'HR', 50000, 25, '2021-01-10'),
(102, 'Aman', 'IT', 75000, 30, '2019-06-15'),
(103, 'Neha', 'Finance', 68000, 28, '2020-02-28'),
(104, 'Ravi', 'IT', 82000, 35, '2018-12-01'),
(105, 'Pooja', 'Marketing', 45000, 24, '2022-04-18'),
(106, 'Deepak', 'HR', 52000, 27, '2021-07-05'),
(107, 'Shruti', 'Finance', 69000, 31, '2020-11-09'),
(108, 'Rohan', 'IT', 91000, 33, '2017-09-21');


--  1. List all employees with salary > 60,000. Sort them by salary.
Select	Salary from data where salary >60000 order by salary ;

-- 2. Show all unique departments.
Select distinct department from data;

-- 3. List employees with salary between 50k–80k.
Select name, salary from data where salary between 50000 and 60000;

-- 4. Find employees whose name starts with 'R'.
SELECT * FROM data WHERE name LIKE 'R%';

-- 5. Show employees not in the 'IT' department.
SELECT * FROM data WHERE department != 'IT';

-- 6. Count total employees, total salary, average salary of 'HR' dept.
select count(*) as Total_employee, Sum(Salary) as total_salary, avg(salary) as average_salary from data where department ='HR';

-- 7. Group employees by department and show average salary.
select avg(salary) as Average_salary, department from data group by department;

-- 8. Show departments with avg salary > 60k.
select avg(salary) as Average_salary, department from data group by department having avg(salary) >60000;

-- 9. Show top 3 highest paid employees.
Select salary from data order by salary desc limit 3;

-- 10. Show names of employees ordered by joining_date (latest first).
select name, joining_date from data order by joining_date desc;