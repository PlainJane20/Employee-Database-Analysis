# Employee Database Analysis

![HRSchema.png](Images/HRSchema.png)

Using six files listed below, I will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, I will perform:

* Data Modeling

* Data Engineering

* Data Analysis

# Technologies used
* ERD diagram created via https://app.quickdatabasediagrams.com/

* PostgreSQL

* Pandas

* SQLAlchemy

* Matplotlib

* Jupyter Notebook

# Data Modeling

First I inspected the CSVs files and sketched out an ERD of the tables, Please see below: 

![Schemas01.png](https://github.com/PlainJane20/Employee-Database-Analysis/blob/master/Employee%20Database/ERD%20Data/Images/Schemas01.png)

# Data Engineering

* Next, using the information I created the table schema for each of the six CSV files, I specified data types, primary keys, foreign keys, and other constraints.
```sql
CREATE TABLE "Employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" VARCHAR NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR NOT NULL,
    "dept_name" VARCHAR NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" INT NOT NULL,
    "salary" MONEY NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title"
     )
);
```
#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.





### Navi Sohi | Data Analytics 

