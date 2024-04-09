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
** Create Schema Section       **
********************************/

CREATE table departments (
   	dept_no VARCHAR (4) PRIMARY KEY,
   	dept_name VARCHAR (30) NOT NULL
);

CREATE table titles (
   	title_id VARCHAR (5) PRIMARY KEY,
   	title VARCHAR (30) NOT NULL
);

CREATE table employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
 	first_name VARCHAR (30) NOT NULL,
 	last_name VARCHAR (50) NOT NULL,
 	sex VARCHAR (1) NOT NULL,
 	hire_date DATE NOT NULL,
 	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE table salaries (
   	emp_no INT PRIMARY KEY,
   	salary INT NOT NULL
);

CREATE table dept_emp (
   	emp_no int NOT NULL,
   	dept_no VARCHAR (4) NOT NULL,
     PRIMARY KEY (emp_no, dept_no),
	 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE table dept_manager (
    	dep_no VARCHAR (4),
    	emp_no INT,
    	PRIMARY KEY (dep_no, emp_no),
 	    FOREIGN KEY (dep_no) REFERENCES departments(dept_no)
);

/******************************************************
** Note: An employee can be associated with more than** 
** one department. For this reason, a juction table  **
** could be created and used for additional analyses **
** The challenge instructions did not stipulate this **
** requirement, however.                             **
******************************************************/


/*************************************
** import the data into each table, **
** then check the tables and ensure **
** the data was imported correctly. **
*************************************/

-- SELECT *
-- FROM departments;

-- SELECT *
-- FROM titles;

-- SELECT *
-- FROM employees;

-- SELECT *
-- FROM salaries;

-- SELECT *
-- FROM dept_emp;

-- SELECT *
-- FROM dept_manager;