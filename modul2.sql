Select employee_id, last_name, job_id, department_id
From employees
where department_id = 90;

select last_name, job_id, department_id
from employees
where last_name = 'Whalen';

select last_name, job_id, department_id
from employees
where last_name = 'whalen';

select last_name, job_id, department_id
from employees
where last_name = 'WHALEN';

select last_name, job_id, department_id
from employees;

describe employees;

select last_name, salary
from employees
where salary <= 3000;

select hire_date, last_name
from employees
where hire_date = '07-JUN-1994';

select salary, last_name
from employees
where salary >6000;


select first_name, last_name
from employees
where last_name = 'Smith';

select last_name, salary
from employees
where salary between 2500 and 3500;

select last_name, salary
from employees
where salary >=2500 and salary <=3100;

select employee_id,  last_name, salary, manager_id
from employees
where manager_id IN (100,101,201);

select employee_id,  last_name, salary, manager_id
from employees
where salary IN (6000,8000,10000);

select employee_id, last_name, manager_id, department_id
from employees
where last_name IN ('Hartstein', 'Vargas');

select first_name
from employees
where first_name LIKE 'S%';

select first_name, last_name
from employees
where first_name LIKE 'S_e_e%';

select last_name, hire_date
from employees
where hire_date LIKE '%05';

select last_name, hire_date
from employees
where hire_date >='1-JAN-05' and hire_date <='31-DEC-05' ;

select last_name
from employees
where last_name LIKE '_o%';

select employee_id, last_name, job_id
from employees
where job_id LIKE 'SA\_%' ESCAPE '\';

--untuk oracle 11g
select employee_id, last_name, job_id
from employees
where job_id LIKE 'SA_%';

select last_name, manager_id
from employees
where manager_id IS NULL;

select last_name, manager_id
from employees
where manager_id is not null;

select last_name, job_id, commission_pct
from employees
where commission_pct IS NULL;

select last_name, job_id, commission_pct
from employees
where commission_pct >=0;
