select *
from employees;

select *
from departments;

select *
from locations;

select *
from countries;

select department_id, department_name, location_id, city
from departments
natural join locations;

select d.department_id, d.department_name, l.location_id, l.city
from departments d, locations l
where d.location_id = l.location_id;

describe departments;
describe locations;

SELECT department_id, department_name, location_id, city
FROM departments
NATURAL JOIN locations
WHERE department_id IN (20,50);

SELECT employees.employee_id, employees.last_name,
 departments.location_id, department_id
FROM employees JOIN departments
USING (department_id);

--gaboleh--
SELECT employees.employee_id, employees.last_name,
 departments.location_id, employees.department_id
FROM employees JOIN departments
USING (department_id);
--gaboleh
SELECT employees.employee_id, employees.last_name,
 departments.location_id, departments.department_id
FROM employees JOIN departments
USING (department_id);

SELECT l.city, d.department_name
FROM locations l JOIN departments d USING (location_id)
WHERE location_id = 1400;

--salah penggunaan
SELECT l.city, d.department_name
FROM locations l JOIN departments d USING (location_id)
WHERE d.location_id = 1400;

SELECT e.employee_id, e.last_name,
 d.location_id, department_id
FROM employees e JOIN departments d
USING (department_id);

SELECT e.employee_id, e.last_name, e.department_id,
 d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

SELECT e.last_name emp, m.last_name mgr
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id);

SELECT e.employee_id, e.last_name, e.department_id,
 d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.manager_id = 149;

SELECT e.employee_id, e.last_name, e.department_id,
 d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.manager_id = 149;

--RANGKUMAN
--TANPA USING DAN ON
SELECT e.employee_id, e.last_name, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

--USING
SELECT e.employee_id, e.last_name, d.location_id
FROM employees e
JOIN departments d
USING (department_id); 

--ON
SELECT e.employee_id, e.last_name, d.location_id
FROM employees e
JOIN departments d
ON (e.department_id =d.department_id); 

SELECT employee_id, city, department_name
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id;

--3 tabel
SELECT e.employee_id, l.city, d.department_name
from employees e, departments d, locations l
where d.department_id = e.department_id and d.location_id = l.location_id;  

SELECT last_name, department_name
FROM employees, departments; 

SELECT last_name, department_name
FROM employees
CROSS JOIN departments;

