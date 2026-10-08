SELECT last_name  Employee, department_id,salary Monthly_Salary 
FROM employees 
WHERE (salary between 5000 and 12000) and department_id between 20 and 60;

SELECT last_name, department_id 
FROM employees 
where department_id between 20 and 50
order by last_name asc, department_id asc;

SELECT last_name 
FROM employees
where last_name like '%a%' and last_name like '%e%';


select last_name, job_id, hire_date
from employees
where hire_date between '01-FEB-01'  and '31-DEC-05'
order by hire_date asc;

select last_name, salary, commission_pct
from employees
where salary > 0 and commission_pct > 0.0
order by salary desc, commission_pct desc;

select last_name, job_id, salary
from employees
where job_id = 'SA_REP'
or job_id = 'SH_CLERK'
and salary not in (2500,3500,7000);

select last_name, job_id, salary
from employees
where last_name like '%O%'
order by last_name asc, job_id desc;

select department_id, last_name, salary, commission_pct
from employees
where commission_pct >0.0
order by commission_pct desc, last_name asc;

select department_id, last_name, salary, commission_pct
from employees
where (salary between 7000 and 10000) and commission_pct>0.1
order by commission_pct desc, last_name asc;

SELECT department_id Department, last_name Employee, salary Monthly_Salary
FROM employees 
WHERE (salary between 5000 and 12000) and department_id between 20 and 60
order by salary desc;
