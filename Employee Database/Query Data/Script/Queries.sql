SELECT * FROM "Departments";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";

-- Data Analysis
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" AS e
JOIN "Salaries" AS s ON e.emp_no=s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT "Departments".dept_no, "Dept_Manager".emp_no, "Departments".dept_name, "Employees".last_name, "Employees".first_name, "Employees".sex 
FROM ("Employees" JOIN "Dept_Manager" ON "Employees".emp_no ="Dept_Manager".emp_no)
JOIN "Departments" ON "Departments".dept_no ="Dept_Manager".dept_no;
	
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Dept_Emp".emp_no, "Dept_Emp".dept_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Departments".dept_name
FROM ("Employees" JOIN "Dept_Emp" ON "Employees".emp_no ="Dept_Emp".emp_no)
JOIN "Departments" ON "Departments".dept_no = "Dept_Emp".dept_no;  	

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM "Employees"
WHERE first_name = 'Hercules' and last_name LIKE 'B%_';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT "Dept_Emp".dept_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Departments".dept_name
FROM ("Employees" JOIN "Dept_Emp" ON "Employees".emp_no ="Dept_Emp".emp_no)
JOIN "Departments" ON "Departments".dept_no = "Dept_Emp".dept_no	  
WHERE dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Dept_Emp".dept_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Departments".dept_name
FROM ("Employees" JOIN "Dept_Emp" ON "Employees".emp_no ="Dept_Emp".emp_no)
JOIN "Departments" ON "Departments".dept_no = "Dept_Emp".dept_no	  
WHERE dept_name='Sales' or dept_name = 'Development'
			
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "namecount"
FROM public."Employees"
GROUP BY last_name
ORDER BY "namecount" DESC;
