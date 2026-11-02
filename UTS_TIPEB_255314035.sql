--Alexander Ricky/255314035--
--TIPE B--
--NO 1--
select employee_id, first_name, last_name, phone_number, salary
from employees
where (employee_id < 125) and salary between 5000 and 12000;

--NO 2--
select employee_id, first_name, last_name, hire_date
from employees
where hire_date between '17-AUG-02' and '31-DEC-05'
order by hire_date desc;

--NO 3--
select first_name ||' '|| last_name as "NAMA LENGKAP",job_id ,salary as "GAJI LAMA", round(salary+(salary*0.10),2) as "GAJI BARU"
from employees
where job_id = 'SA_REP';

--NO 4--
select  lower(first_name), upper(last_name), manager_id, hire_date, trunc((sysdate-hire_date)/7,0) as "LAMA KERJA (WEEK)"
from employees
where manager_id in ('100', '101', '102');

--NO 5--
select distinct first_name, phone_number, job_id
from employees
where (phone_number like '65%') and (job_id != 'AD_VP')and job_id != 'AD_PRESS'
order by first_name;

--NO 6--
select first_name, job_id, salary, lpad(salary*12,10,'#') as "SALARY TAHUNAN"
from employees
where job_id like '%MAN' or salary > 10000;

--NO 7--
select first_name, job_id, commission_pct, salary,
decode(job_id, 'SA_MAN', 0.5*commission_pct*salary, 'SA_REP', 0.25*commission_pct*salary) "BONUS"
from employees
where commission_pct>0;

--NO 8--
select last_name, job_id, salary,
case job_id when 'AD_PRESS' then 0.12*salary+salary
            when 'ST_MAN' then 0.14*salary+salary
            when 'IT_PROG' then 0.16*salary+salary
            when 'SA_REP' then 0.075*salary+salary
            else 0.02*salary+salary end "NEW SALARY"
from employees
order by "NEW SALARY" desc, first_name asc;
