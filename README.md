# Employee Database Analysis

![HRSchema.png](Images/HRSchema.png)

Using six files listed below, I will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, I will perform:

* Data Modeling

* Data Engineering

* Data Analysis

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
## Dependencies/Tools
* ERD sketch tool, such as [QuickDatabaseDiagrams](http://www.quickdatabasediagrams.com/)
* SQL database (PostgreSQL used here)
* SQL client (used pgAdmin)
* Docker container (used for hosting SQL database + client). 
* (**BONUS**) pandas + sqlalchemy modules in Python

## Overview
I have been tasked by the fictional Pewlett-Hackard company to discover some insights on their employee data from the 1980s and 1990s. Using the provided data, I create a data model including an ERD diagram and table schema that includes specific data types, primary keys, foreign keys, and other constraints. Data collected from CSVs is then loaded to the SQL database and the following analysis questions are answered using SQL queries:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

As a BONUS, it is suspected that the given data is fake. To prove it, a Jupyter Notebook has been provided to create a bar chart of average salary by title to show that not all is well in the data.

### [Navi Sohi](https://github.com/PlainJane20) | Data Analytics & Visualization

