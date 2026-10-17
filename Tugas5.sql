select last_name || ' mendapat ' || to_char(salary, 'fm$99,999.00') || ' perbulan tetapi menginginkan ' 
||to_char(3 * salary, 'fm$99,999.00') AS "DREAM SALARIES"
from employees;

select last_name, to_char(hire_date, 'fm DD-MM-YYYY')as "HIRE DATE" , to_char(hire_date, 'FMDay') AS "DAY"
from employees
order by to_char(hire_date, 'D');

select last_name,hire_date,to_char(NEXT_DAY(ADD_MONTHS(hire_date, 6), 'MONDAY'),'FMDay,"the" DDspth "of" FMMonth,YYYY') AS "REVIEW"
from employees;

select last_name, NVL(to_char(commission_pct), 'No Commission') AS "COMMISSION_PCT"
from employees;

select last_name,job_id,
DECODE(job_id,'AD_PRES', 'A','ST_MAN', 'B', 'IT_PROG', 'C','SA_REP', 'D','ST_CLERK', 'E','0') AS "GRADE"
from employees;

select last_name,job_id,
CASE job_id WHEN 'AD_PRES' THEN 'A' WHEN 'ST_MAN' THEN 'B' WHEN 'IT_PROG' THEN 'C' WHEN 'SA_REP' THEN 'D'
WHEN 'ST_CLERK' THEN 'E'ELSE '0'END AS "GRADE"
from employees;