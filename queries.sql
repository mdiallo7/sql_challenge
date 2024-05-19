--Data analysis

select emp_no, last_name, first_name, sex, salary 
from employees
join salaries using (emp_no);

select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager dm
join department d on dm.dept_no = d.dept_no
join employees e on dm.emp_no = e.emp_no; 

select e.emp_no, e.last_name, e.first_name, d.dept_name, d.dept_no
from employees e
join dept_emp de on e.emp_no = de.emp_no
join department d on de.dept_no = d.dept_no

select first_name, last_name, sex
from employees
where first_name = 'Hercules' AND last_name like 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join department d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join department d on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;