/*********************************************************
**                    Module 9 Challenge                **
**                                                      **
** It’s been two weeks since I was hired as a new data  **
** engineer at Pewlett Hackard (a fictional company).   **
** Your first major task is to do a research project    **
** about people whom the company employed during the    **
** 1980s and 1990s. All that remains of the employee    **
** database from that period are six CSV files.         **
**                                                      **
** For this project, I’ll design the tables to hold the **
** data from the CSV files, import the CSV files into a **
** SQL database, and then answer questions about the    **
** data. That is, I’ll perform data modeling, data      **
** engineering, and data analysis, respectively.        **
*********************************************************/
/********************************
**  DATA ANALYSIS SECTION      **
********************************/


--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries as s ON
 	e.emp_no = s.emp_no;
	
--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 	
ORDER BY hire_date ASC	

--3. List the manager of each department along with their department number, 
--   department name, employee number, last name, and first name.
SELECT dept_manager.dep_no, departments.dept_name, employees.emp_no,employees.last_name,employees.first_name
FROM dept_manager
INNER JOIN departments ON
	departments.dept_no = dept_manager.dep_no
	INNER JOIN employees on
	dept_manager.emp_no = employees.emp_no
ORDER BY dep_no

--4. List the department number for each employee along with that 
--	 employee's number, last name, first name, and department name 
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.emp_no,employees.last_name,employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON
	departments.dept_no = dept_emp.dept_no
	INNER JOIN employees on
	dept_emp.emp_no = employees.emp_no
ORDER BY dept_no
	
--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name like 'B%'

--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept_emp.emp_no, departments.dept_name, employees.last_name,employees.first_name
FROM dept_emp
INNER JOIN departments ON
	departments.dept_no = dept_emp.dept_no
	INNER JOIN employees on
	dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no

-- --7. List each employee in the Sales and Development departments, including their employee number, last name, and first name.
SELECT dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name 
FROM dept_emp
INNER JOIN departments ON
	departments.dept_no = dept_emp.dept_no
	INNER JOIN employees on
	dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name in ('Sales','Development')
ORDER BY dept_name, emp_no

-- --8. List the frequency counts, in descending order, of all the employee last names
-- -- (that is, how many employees share each last name).
SELECT e.last_name, count(e.last_name) as "name_count"
FROM employees AS e
GROUP BY last_name
ORDER BY name_count DESC