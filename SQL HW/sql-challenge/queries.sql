select public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Employees".sex, public."Salaries".salary
from public."Employees" 
Inner Join public."Salaries" on public."Employees".emp_no = public."Salaries".emp_no

select first_name, last_name, hire_date from public."Employees"
where hire_date like'%1986%'

select public."Departments".dept_no, public."Departments".dept_name, public."Dept_Manager".emp_no, public."Employees".last_name, public."Employees".first_name
from ((public."Dept_Manager" 
Inner Join public."Departments" on public."Dept_Manager".dept_no = public."Departments".dept_no)
Inner Join public."Employees" on public."Dept_Manager".emp_no = public."Employees".emp_no)

select public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Employees".last_name, public."Departments".dept_name, public."Dept_Emp".dept_no
from ((public."Employees" 
Inner Join public."Dept_Emp" on public."Employees".emp_no = public."Dept_Emp".emp_no)
Inner Join public."Departments" on public."Dept_Emp".dept_no = public."Departments".dept_no)

select first_name, last_name, sex from public."Employees"
where first_name = 'Hercules' and last_name like '%B%'

select public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Departments".dept_name, public."Dept_Emp".dept_no
from ((public."Employees" 
Inner Join public."Dept_Emp" on public."Employees".emp_no = public."Dept_Emp".emp_no)
Inner Join public."Departments" on public."Dept_Emp".dept_no = public."Departments".dept_no)
where dept_name like 'Sales'

select public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Departments".dept_name, public."Dept_Emp".dept_no
from ((public."Employees" 
Inner Join public."Dept_Emp" on public."Employees".emp_no = public."Dept_Emp".emp_no)
Inner Join public."Departments" on public."Dept_Emp".dept_no = public."Departments".dept_no)
where dept_name = 'Sales' and dept_name = 'Development'

select count(*), last_name from public."Employees" group by last_name order by count(*) desc