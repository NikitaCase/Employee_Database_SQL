CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(40)
);


CREATE TABLE titles(
	title_id VARCHAR (5) PRIMARY KEY, 
	title VARCHAR(50)
);


CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL, 
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1)
	hire_date DATE, 
	FOREIGN KEY emp_title_id REFERENCES titles(title_id)
);


CREATE TABLE dept_employee(
	emp_no INT PRIMARY KEY NOT NULL,
	dept_no VARCHAR(4),
	FOREIGN KEY emp_no REFERENCES employees(emp_no),
	FOREIGN KEY dept_no REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager(
	dept_no VARCHAR(4)PRIMARY KEY NOT NULL,
	emp_no INT
	FOREIGN KEY emp_no REFERENCES employees(emp_no),
	FOREIGN KEY dept_no REFERENCES departments(dept_no)
);


CREATE TABLE salary(
	emp_no INT PRIMARY KEY,
	salary INT 
);
