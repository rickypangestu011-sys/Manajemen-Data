select employee_id, hire_date Hired
from employees
where last_name = 'Higgins';

select employee_id, to_char(hire_date,'MM/YY')month_hired
from employees
where last_name = 'Higgins';

select employee_id, to_char(hire_date,'fm DD MONTH YYYY')month_hired
from employees
where last_name = 'Higgins';

select employee_id, to_char(hire_date,'fm DD MONTH YYYY')month_hired
from employees;

select employee_id, to_char(hire_date,'fm DAY, DD MON YYYY')month_hired
from employees;

select last_name, to_char(hire_date, 'fm Ddspth "of" MONTH YYYY fm HH:MI:SS AM') As hiredate
from employees;

select last_name, to_char(salary, 'L99999.99') as salary
from employees
where last_name like 'K%';

select last_name, to_char(salary, 'L99999.99') as salary
from employees;

select last_name, hire_date
from employees
where hire_date = to_date('May 24, 2010' ,'fxMonth DD, yyyy');

SELECT last_name,
UPPER(CONCAT(SUBSTR(LAST_NAME,1,8),'_US'))
FROM employees
WHERE department_id=60;

SELECT last_name,
lower(CONCAT(SUBSTR(LAST_NAME,1,5),'_df'))
FROM employees
WHERE department_id=60;

SELECT last_name,salary,
NVL(commission_pct,0),
(salary*12)+(salary*12*nvl(commission_pct,0)) as ANNSAL
FROM employees;

SELECT last_name,salary,
commission_pct,
(salary*12)+(salary*12*commission_pct) as ANNSAL
FROM employees;

SELECT last_name,salary,commission_pct,
NVL2(commission_pct,'SAL+COMM','SAL') income
FROM employees
where department_id in (50,80)
order by last_name;

SELECT last_name,salary,commission_pct,
NVL2(commission_pct,salary+salary*commission_pct,salary) income
FROM employees
where department_id in (50,80)
order by last_name;

SELECT first_name,LENGTH(first_name)
"expr1",last_name,LENGTH(last_name) "expr2",
NULLIF(LENGTH(first_name),LENGTH(last_name)) result
FROM employees order by first_name;

SELECT last_name,manager_id, commission_pct,
COALESCE(manager_id,commission_pct,-1) comm
FROM employees
ORDER BY commission_pct;
    
SELECT last_name,job_id,salary,
CASE job_id WHEN 'IT_PROG' THEN 1.10*salary
 WHEN 'ST_CLERK' THEN 1.15*salary
 WHEN 'SA_REP' THEN 1.20*salary
ELSE salary END "REVISED_SALARY"
FROM employees;

SELECT last_name,job_id,salary,
DECODE(job_id,'IT_PROG', 1.10*salary,
 'ST_CLERK', 1.15*salary,
 'SA_REP', 1.20*salary,
 salary) "REVISED_SALARY"
FROM employees;    