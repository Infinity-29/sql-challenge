-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employees e inner join  
salaries s on e.emp_no=s.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name,last_name,hire_date from employees WHERE CAST(hire_date AS DATE) BETWEEN '12/31/1985' AND '01/01/1987';

 --3. List the manager of each department with the following information: department number, department name, 
 -- the manager's employee number, last name, first name.
 
 select d.dept_no ,dpt.dept_name ,e.emp_no ,e.last_name ,e.first_name from dept_manager d 
 inner join departments dpt on d.dept_no=dpt.dept_no
 inner join employees e on e.emp_no=d.emp_no
 
-- 4. List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.

 select deptemp.emp_no ,e.last_name ,e.first_name,d.dept_name from departments d
 inner join dept_emp deptemp on d.dept_no=deptemp.dept_no
 inner join employees e on e.emp_no=deptemp.emp_no
 
  
--  5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name ,last_name ,sex from employees
where first_name ='Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select deptemp.emp_no,e.last_name ,e.first_name,d.dept_name from departments d
 inner join dept_emp deptemp on d.dept_no=deptemp.dept_no
 inner join employees e on e.emp_no=deptemp.emp_no
 where dept_name ='Sales'
 
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name,
--and department name.

select deptemp.emp_no,e.last_name ,e.first_name,d.dept_name from departments d
 inner join dept_emp deptemp on d.dept_no=deptemp.dept_no
 inner join employees e on e.emp_no=deptemp.emp_no
 where dept_name in('Sales','Development')
 
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(last_name), last_name from employees 
group by last_name
order by count(last_name) desc
 
 



