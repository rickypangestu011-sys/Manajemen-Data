--No 1
--Fungsi grup bekerja pada beberapa row untuk menghasilkan satu hasil untuk setiap grupnya.
--Jawaban: TRUE

--No 2
--Fungsi grup melibatkan NULL dalam perhitungan.
--Jawaban: FALSE

--No 3
--Klausa WHERE membatasi baris sebelum dimasukkan ke dalam perhitungan grup.
--Jawaban: TRUE

--No 4
select round(max(salary)) as Maximum,round(min(salary)) as Minimum,
round(sum(salary)) as Sum,round(avg(salary)) as Average
from employees;

--No5
select job_id, round(max(salary)) as Maximum,round(min(salary)) as Minimum,
round(sum(salary)) as Sum,round(avg(salary)) as Average
from employees
group by job_id;

--No6
select job_id, count(*) as "JUMLAH"
from employees
group by job_id;

--No7
select count(distinct manager_id) as "Jumlah Manager"
from employees;

--No8
select max(salary) - min(salary) as "PERBEDAAN GAJI"
from employees;

--No9
select manager_id, min(salary)
from employees
group by manager_id
having min(salary) > 6000
order by min(salary);

--No10
select count(*) as TOTAL,
sum(case when to_char(hire_date, 'YYYY') = '2000' then 1 else 0 end) as "2000",
sum(case when to_char(hire_date, 'YYYY') = '2001' then 1 else 0 end) as "2001",
sum(case when to_char(hire_date, 'YYYY') = '2002' then 1 else 0 end) as "2002",
sum(case when to_char(hire_date, 'YYYY') = '2003' then 1 else 0 end) as "2003"
from employees
where hire_date >= date '2000-01-01'
and hire_date < date '2004-01-01';

--No11
select job_id as "Job",
sum(decode(department_id, 20, salary)) as "Dept 20",
sum(decode(department_id, 50, salary)) as "Dept 50",
sum(decode(department_id, 80, salary)) as "Dept 80",
sum(decode(department_id, 90, salary)) as "Dept 90",
sum(salary) as "Total"
from employees
group by job_id
order by job_id;