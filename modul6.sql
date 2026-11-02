select *
from employees;

select *
from departments;

select employees.employee_id, departments.department_id, departments.department_name
from employees, departments
where employees.department_id = departments.department_id;

select employees.employee_id,employees.first_name, departments.department_id, departments.department_name
from employees, departments
where employees.department_id = departments.department_id;

select employees.employee_id,employees.first_name, employees.last_name ,departments.department_id, departments.department_name
from employees, departments
where employees.department_id = departments.department_id and employees.last_name = 'Matos';

select e.employee_id,e.first_name, d.department_id, d.department_name, d.location_id
from employees e , departments d
where e.department_id = d.department_id;

select x.employee_id,x.first_name, y.department_id, y.department_name, y.location_id
from employees x , departments y
where x.department_id = y.department_id; --tidak disarankan menggunakan x dan y--

select e.employee_id,e.first_name, d.department_id, d.department_name, d.location_id
from employees e , departments d
where e.department_id = d.department_id and e.last_name = 'Matos';

select *
from employees;
--primary *employee_id, first_name..
--foreign **department_id

select *
from departments;
--primary *department_id,....
--foreign **location_id

select *
from locations;
--primary *location_id,....
--foreign **

--caranya e foregin = d primary, d ** = l *

select e.last_name, d.department_name, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and d.location_id = l.location_id;

select e.last_name, d.department_id ,d.department_name
from employees e inner join departments d
on e.department_id = d.department_id;

select e.last_name,d.department_id , d.department_name
from employees e left outer join departments d
on e.department_id = d.department_id;

select e.last_name,d.department_id , d.department_name
from employees e right outer join departments d
on e.department_id = d.department_id;

select e.last_name,d.department_id , d.department_name
from employees e full outer join departments d
on e.department_id = d.department_id;

--Join 2 tabel hanya menampilkan baris yang cocok (berelasi), hal ini disebut suatu inner join (equijoin).
--Join antara 2 tabel yang selain menampilkan hasil inner join juga menampilkan baris yang tidak cocok di sebelah kiri (atau kanan) disebut left outer join atau right outer join.
--Join antara 2 tabel yang selain menampilkan hasil inner join juga menampilkan baris yang tidak cocok di sebelah kiri dan kanan disebut full outer join. 

select worker.last_name || ' memiliki manager ' || manager.last_name
from employees worker, employees manager
where worker.manager_id = manager.employee_id;

select *
from employees;
