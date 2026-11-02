select *
from employees;

select *
from departments;

select *
from locations;

select *
from countries;

select d.location_id, l.street_address, l.city, l.state_province, c.country_name
from departments d, locations l, countries c
where d.location_id = l.location_id;

select e.last_name, e.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id and d.department_name = 'Shipping';

select e.last_name, e.job_id ,e.department_id, d.department_name, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and l.city = 'Toronto';

select worker.last_name as "Employee",worker.employee_id as "EMP#", manager.last_name as "Manager", manager.employee_id as "Mgr#"
from employees worker, employees manager
where worker.manager_id = manager.employee_id;

select e.last_name, d.department_name, e.commission_pct ,d.location_id, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id
and d.location_id = l.location_id and e.commission_pct > 0;

