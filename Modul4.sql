select 'The job id for ' || UPPER (last_name)|| ' is ' || LOWER(job_id) as "Employee Details" from employees;
-----------

select employee_id, last_name, department_id
from employees
where lower (last_name) = 'Austin';

select employee_id, last_name, department_id
from employees
where last_name = 'austin';

select employee_id, last_name, department_id
from employees
where UPPER(last_name) = 'AUSTIN';

select employee_id, last_name, department_id
from employees
where initcap(last_name) = 'Austin';

select employee_id, last_name, department_id
from employees
where last_name = 'Austin'; 

select employee_id, last_name, department_id
from employees
where lower (last_name) = 'austin'or UPPER(last_name) = 'AUSTIN'or initcap(last_name)= 'Austin';

select employee_id, UPPER (last_name), department_id
from employees
where initcap (last_name) = 'Austin';
------------

SELECT employee_id,CONCAT(first_name,last_name) NAMA, job_id,LENGTH(last_name) Panjang_Nama_Belakang,LENGTH(first_name)Panjang_Nama_Depan ,INSTR(last_name,'a') "Posisihuruf 'a'" 
FROM employees WHERE SUBSTR(job_id,4)='REP';

SELECT employee_id,CONCAT(first_name,last_name) NAMA, job_id,LENGTH(last_name) Panjang_Nama_Belakang,LENGTH(first_name)Panjang_Nama_Depan ,INSTR(last_name,'n') "Posisihuruf 'n'" 
FROM employees WHERE SUBSTR(last_name, -1)='n';

SELECT employee_id,CONCAT(first_name,last_name) NAMA, job_id,LENGTH(last_name) Panjang_Nama_Belakang,INSTR(last_name,'n') "Posisihuruf 'n'" 
FROM employees WHERE SUBSTR(last_name, -2,2)= 'an';
----------

SELECT ROUND(45.925,2),ROUND(45.926,0), ROUND(45.926,-1)
FROM DUAL;  

SELECT ROUND(45.425,2),ROUND(45.426,0), ROUND(44.426,-1)
FROM DUAL;  

SELECT TRUNC(45.425,2),TRUNC(45.426,0), TRUNC(44.426,-1)
FROM DUAL;  

SELECT LAST_NAME, SALARY, mod(SALARY,5000), job_id
FROM EMPLOYEES
WHERE job_id = 'SA_REP';

SELECT last_name,hire_date FROM employees 
WHERE hire_date < '01-FEB-01';

SELECT SYSDATE from dual;

SELECT last_name,hire_date, (SYSDATE-hire_date)/7 as WEEK FROM
employees
WHERE department_id=90;

SELECT last_name,hire_date, (SYSDATE-hire_date)/365 YEAR  FROM
employees
WHERE department_id=90;

SELECT employee_id, hire_date,
 months_between(SYSDATE,hire_date) TENURE,
 add_months(hire_date,6) REVIEW,
 next_day(hire_date,'FRIDAY'),
 last_day(hire_date)
 from employees
 where months_between (sysdate,hire_date) > 200;
 
 select months_between ('17-AUG-45', '17-AUG-26')
 from DUAL;
 
 select next_day('17-AUG-45', 'friday')
 from DUAL;
 
 select round (sysdate, 'MONTH')
 from DUAL;
 
  select round (sysdate, 'year')
 from DUAL;

 select trunc (sysdate, 'MONTH')
 from DUAL;
 
  select trunc (sysdate, 'year')
 from DUAL;

 SELECT employee_id,hire_date,
 ROUND(hire_date,'MONTH'),TRUNC(hire_date,'MONTH')
 FROM employees
 WHERE hire_date like '%05';
