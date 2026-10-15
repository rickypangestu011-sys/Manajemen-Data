select employee_id ,initcap(last_name), length(last_name)
from employees
where upper(last_name) like 'J%'or upper(last_name) like 'A%' or upper(last_name) like 'M%';

select employee_id, last_name, job_id,lpad(salary,10,'$')
from employees
where job_id = 'SA_REP'
order by last_name asc;

select employee_id, first_name, lower(substr(first_name, 1,1)) || upper(substr(first_name, 2)) as first_name2,
instr(first_name, 'a') as "posisi_a"
from employees
where substr(first_name, -1,1) ='n'
order by first_name;

select employee_id, last_name, salary, round(salary*1.17,2) as "NEW SALARY"
from employees
order by "NEW SALARY" desc;

select employee_id, last_name, salary, round(salary+(salary*0.17),2) as "NEW SALARY",
round(salary+(salary*0.17),2) - salary as "INCREASE"
from employees
order by "INCREASE" desc;

select last_name,round(MONTHS_BETWEEN(SYSDATE, hire_date)) AS "MONTHS_WORKED"
FROM employees
order by "MONTHS_WORKED" asc;

select last_name, trunc(MONTHS_BETWEEN(SYSDATE, hire_date) / 12) AS "TAHUN", 
trunc(mod(MONTHS_BETWEEN(SYSDATE, hire_date), 12)) AS "BULAN"
from employees
order by MONTHS_BETWEEN(SYSDATE, hire_date) desc;
