-- Do select queries on all tables to inspect data
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no AS "employee number", 
e.last_name AS "last name", 
e.first_name AS "first name", 
e.sex AS sex,
s.salary AS salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no)

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date

-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.
SELECT dm.dept_no AS "department number",
d.dept_name AS "department name",
e.emp_no AS "employee number",
e.last_name AS "last name",
e.first_name AS "first name"
FROM dept_manager dm
JOIN departments d
ON (dm.dept_no = d.dept_no)
JOIN employees e
ON (dm.emp_no = e.emp_no)

-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name.
SELECT de.dept_no AS "department number",
e.emp_no AS "employee number",
e.last_name AS "last name",
e.first_name AS "first name",
d.dept_name AS "department name"
FROM dept_emp de
JOIN employees e
ON (de.emp_no = e.emp_no)
JOIN departments d
ON (de.dept_no = d.dept_no)

-- List first name, last name, and sex of each employee whose first name is 
-- Hercules and whose last name begins with the letter B.

-- List each employee in the Sales department, including their employee number, 
-- last name, and first name.

-- List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.

-- List the frequency counts, in descending order, of all the employee last names
-- (that is, how many employees share each last name).