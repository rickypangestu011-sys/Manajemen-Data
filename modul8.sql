SELECT AVG(salary),MAX(salary),MIN(salary),SUM(salary)
FROM employees
WHERE job_id like '%REP%';

SELECT MIN(hire_date),MAX(hire_date)
FROM employees;

SELECT MIN(last_name),MAX(last_name)
FROM employees;

SELECT COUNT(*)
FROM employees
WHERE department_id=50;

SELECT COUNT(commission_pct)
FROM employees
WHERE department_id=80;

SELECT COUNT(DISTINCT(department_id))
FROM employees;

select * from employees;

SELECT COUNT(department_id)
FROM employees;

SELECT AVG(commission_pct)
FROM employees;

SELECT AVG(NVL(commission_pct,0))
FROM employees;

SELECT department_id,AVG(salary)
FROM employees
GROUP BY department_id
order by department_id;

SELECT AVG(salary)
FROM employees
GROUP BY department_id;

SELECT department_id,AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY AVG(salary);

SELECT department_id,AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT department_id,AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY AVG(salary)desc;

SELECT department_id,job_id,sum(salary)
FROM employees
GROUP BY department_id,job_id
ORDER BY department_id,job_id;

SELECT department_id, count(last_name)
FROM employees
GROUP BY department_id;

SELECT department_id,count(last_name)
FROM employees GROUP BY department_id;

SELECT department_id,AVG(salary)
FROM employees
where avg(salary) > 8000
GROUP BY department_id;

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING max(salary) > 10000;

SELECT job_id, SUM(salary) PAYROLL
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY SUM(salary);

SELECT job_id, SUM(salary) PAYROLL
FROM employees
WHERE job_id LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY SUM(salary);

SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;

SELECT department_id,(AVG(salary))
FROM employees
GROUP BY department_id;