SELECT last_name, job_id, hire_date FROM employees WHERE last_name IN ('Austin', 'Taylor');  

SELECT last_name, salary, commission_pct FROM employees WHERE commission_pct >=0;

SELECT employee_id, last_name FROM employees WHERE last_name LIKE '__e%';

SELECT employee_id, first_name, last_name, hire_date FROM employees WHERE hire_date >'31-DEC-07'; 

SELECT last_name FROM employees WHERE last_name LIKE 'P%';

SELECT employee_id, last_name, job_id FROM employees WHERE job_id  LIKE 'IT_%';

SELECT last_name, salary FROM employees WHERE salary >14000;

SELECT employee_id, last_name, department_id FROM employees WHERE employee_id = '124';

SELECT last_name, salary FROM employees WHERE salary between 5000 and 12000;

SELECT last_name, hire_date FROM employees WHERE hire_date LIKE '%04';