select e.emp_id, e.last_name, e.first_name, e.sex, s.salary
from employee as e
join salaries as s
on (e.emp_id=s.emp_id);

select first_name, last_name, hire_date
from employee
where extract(year from hire_date) = 1986;

select m.dep_id, d.dep_name, m.emp_id, e.last_name, e.first_name
from department_manager as m
join department as d
on (m.dep_id=d.dep_id)
join employee as e
on (m.emp_id=e.emp_id);

select ed.dep_id, ed.emp_id, e.last_name, e.first_name, d.dep_name
from employee_department as ed
join department as d
on (ed.dep_id=d.dep_id)
join employee as e
on (ed.emp_id=e.emp_id);

select first_name, last_name, sex
from employee
where first_name = 'Hercules' and last_name like 'B%';

select ed.emp_id, e.last_name, e.first_name
from employee_department as ed
join department as d
on (ed.dep_id=d.dep_id)
join employee as e
on (ed.emp_id=e.emp_id)
where d.dep_name = 'Sales';

select ed.emp_id, e.last_name, e.first_name, d.dep_name
from employee_department as ed
join department as d
on (ed.dep_id=d.dep_id)
join employee as e
on (ed.emp_id=e.emp_id)
where d.dep_name = 'Sales' or d.dep_name = 'Development';

select last_name, count(last_name)
from employee
group by last_name 
order by count(last_name) DESC;


select * from employee