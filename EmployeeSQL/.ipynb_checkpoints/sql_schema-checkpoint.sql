-- CREATE TABLE
CREATE TABLE "departments" (
    "dept_no" VARCHAR (30) NOT NULL
    "dept_name" VARCHAR (30) NOT NULL
    CONSTRAINT "pk_departments" 
    PRIMARY KEY("dept_no")
    
);

-- IMPORT CSV

SELECT * FROM departments;

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER NOT NULL
    "dept_no" VARCHAR(30) NOT NULL
    CONSTRAINT "fk_dept_emp_emp_no"
    FOREIGN KEY ("emp_no")
    REFERENCES "employees"("emp_no")
    CONSTRAINT "fk_dept_emp_dept_no" 
    FOREIGN KEY("dept_no")
    REFERENCES "departments"("dept_no")

);

-- IMPORT CSV

SELECT * FROM dept_emp;

-- CREATE TABLE

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30) NOT NULL
    "emp_no" INTEGER NOT NULL
    CONSTRAINT "fk_dept_manager_dept_no" 
    FOREIGN KEY("dept_no")
    REFERENCES "departments"("dept_no")
    CONSTRAINT "fk_dept_manager_emp_no" 
    FOREIGN KEY("emp_no")
    REFERENCES "employees"("emp_no")

);

-- IMPORT CSV

SELECT * FROM dept_manager;

-- CREATE TABLE

CREATE TABLE "employees" (
    "emp_no" INTEGER NOT NULL
    "emp_title_id" VARCHAR(30) NOT NULL
    "birth_date" DATE NOT NULL
    "first_name" VARCHAR(30) NOT NULL
    "last_name" VARCHAR(30) NOT NULL
    "sex" VARCHAR(30) NOT NULL
    "hire_date" DATE NOT NULL
    CONSTRAINT "pk_employees"
    PRIMARY KEY ("emp_no" )
    CONSTRAINT "fk_employees_emp_title_id" 
    FOREIGN KEY("emp_title_id")
    REFERENCES "titles"("title_id")

);

-- IMPORT CSV

SELECT * FROM employees;

-- CREATE TABLE

CREATE TABLE "salaries" (
    "emp_no" INTEGER NOT NULL
    "salary" INTEGER NOT NULL
    CONSTRAINT "pk_salaries" 
    PRIMARY KEY ("emp_no")
    CONSTRAINT "fk_salaries_emp_no"
    FOREIGN KEY("emp_no")
    REFERENCES "employees"("emp_no")

);

-- IMPORT CSV

SELECT * FROM salaries;

-- CREATE TABLE

CREATE TABLE "titles" (
    "title_id" VARCHAR(30) NOT NULL
    "title" VARCHAR(30) NOT NULL
    CONSTRAINT "pk_titles" 
    PRIMARY KEY("title_id")

);

-- IMPORT CSV

SELECT * FROM titles;