select location_id, street_address, city, state_province, country_name
from locations
natural join countries;

select last_name, department_id, department_name
from employees 
join departments using (department_id); 

select e.last_name, e.department_id, d.department_name
from employees e
join departments d on (e.department_id = d.department_id); 

select last_name, job_id, department_id, department_name
from employees
natural join departments
natural join locations
where city = 'Toronto';

select last_name, job_id, department_id, department_name
from employees
join departments using (department_id)
join locations using (location_id)
where city = 'Toronto';

select e.last_name, e.job_id, e.department_id, d.department_name
from employees e
join departments d on (e.department_id = d.department_id)
join locations l on (d.location_id = l.location_id)
where l.city = 'Toronto';

select e.last_name AS "Employee", e.employee_id AS "EMP#", m.last_name AS "Manager", m.employee_id AS "Mgr#"
from employees e
join employees m on (e.manager_id = m.employee_id)
order by "EMP#";

select e.last_name, d.department_name, d.location_id, l.city
from employees e
join departments d on (e.department_id = d.department_id)
join locations l on (d.location_id = l.location_id)
where e.commission_pct is not null;