--- Queries

-- 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
  FROM Employee AS e
  JOIN Salary as s ON e.emp_no = s.emp_no;

-- 2
SELECT first_name, last_name, hire_date
  FROM Employee
 WHERE hire_date BETWEEN '1/1/1986' and '4/8/2024'
 ORDER BY hire_date;

-- 3
SELECT d.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
  FROM DeptManager AS dm
  JOIN Employee AS e ON e.emp_no = dm.emp_no 
  JOIN Department AS d ON dm.dept_no = d.dept_no
 ORDER BY d.dept_no;

-- 4
SELECT d.dept_no, e.emp_no, e.first_name, e.last_name, d.dept_name
  FROM DeptEmp AS de
  JOIN Employee AS e ON e.emp_no = de.emp_no
  JOIN Department AS d ON de.dept_no = d.dept_no
 ORDER BY d.dept_no;
 
-- 5
SELECT first_name, last_name, sex
  FROM Employee
 WHERE first_name = 'Hercules' AND last_name LIKE 'B%' -- Checks if string begins with B
 ORDER BY last_name;

-- 6
SELECT d.dept_name, e.emp_no, e.first_name, e.last_name
  FROM DeptEmp AS de
  JOIN Employee AS e ON e.emp_no = de.emp_no
  JOIN Department AS d ON de.dept_no = d.dept_no
 WHERE d.dept_name = 'Sales';
 
 -- 7
 SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
  FROM DeptEmp AS de
  JOIN Employee AS e ON e.emp_no = de.emp_no
  JOIN Department AS d ON de.dept_no = d.dept_no
 WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
 
-- 8
SELECT last_name, COUNT(last_name) as frequency
  FROM Employee
 GROUP BY last_name 
 ORDER BY frequency DESC;
 
