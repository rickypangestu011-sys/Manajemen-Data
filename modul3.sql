select  employee_id, last_name, job_id, salary
from employees
where salary >= 1000
And job_id Like '%MAN%';

select  employee_id, last_name, job_id, salary
from employees
where salary >= 1000
or job_id Like '%MAN%';

select last_name, job_id
from employees
where job_id NOT in ('IT_PROG', 'ST_CLERK', 'SA_REP');

select last_name, job_id
from employees
where job_id in ('IT_PROG', 'ST_CLERK', 'SA_REP');

select last_name, job_id
from employees
where job_id in ('it_prog', 'st_clerk', 'sa_rep');

select last_name, job_id
from employees
where job_id NOT in ('AC_ACCOUNT', 'AD_VP');

select last_name, job_id
from employees
where job_id in ('AC_ACCOUNT', 'AD_VP');

select last_name, job_id
from employees
where salary NOT between 10000 and 15000;

select last_name, job_id, salary
from employees
where salary between 10000 and 15000;

select last_name, job_id
from employees
where last_name not like '%a%';

select last_name, job_id
from employees
where last_name like '%a%';

select first_name, last_name, job_id, commission_pct
from employees
where commission_pct is not null;

select first_name, last_name, job_id, commission_pct
from employees
where commission_pct is null;

select first_name, last_name, job_id, commission_pct
from employees
where commission_pct > 0.0;

select last_name, job_id, salary 
from employees
where job_id = 'SA_REP'
or job_id = 'AD_PRES'
and salary > 10000;

select last_name, job_id, salary 
from employees
where (job_id = 'SA_REP'
or job_id = 'AD_PRES')
and salary > 10000;

select last_name, job_id, salary
from employees
where job_id in ('SA_REP','AD_PRES')
and salary > 10000;
 
select last_name, job_id, department_id, hire_date
from employees
order by hire_date;

select last_name, job_id, department_id, hire_date
from employees
order by hire_date ASC;

select last_name, job_id, department_id, hire_date
from employees
order by hire_date desc;

select first_name, last_name
from employees
order by first_name ASC;

select employee_id, last_name, salary, salary*12 annsal
from employees
order by annsal;

select employee_id, last_name, salary, salary*12 annsal
from employees
order by annsal desc;

select employee_id, last_name, salary, salary*12 Gaji_Tahunan
from employees
order by Gaji_Tahunan desc;

select last_name,department_id, salary
from employees
order by department_id ,salary DESC;

select last_name,department_id, salary
from employees
order by department_id ,salary asc;

select last_name,department_id, salary
from employees
order by department_id asc ,salary asc, last_name asc;
