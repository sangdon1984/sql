# 지정한 범위의 값 출력
select * from employees
where emp_no between 11000 and 11100;

select * from employees
where birth_date between '1960-01-01'
and '1969-12-31'
order by birth_date asc;

select * from employees
where birth_date >= '1960-01-01'
and birth_date <= '1969-12-31'
order by birth_date asc;

SELECT min(emp_no) from employees;
SELECT max(emp_no) from employees;

select min(first_name) from employees;
select max(first_name) from employees;

select * from salaries;

select * from salaries 
where emp_no = 10001;

select min(salary) from salaries 
where emp_no = 10001;

select max(salary) from salaries 
where emp_no = 10001;

select sum(salary) from salaries
where emp_no = 10001;

select avg(salary) from salaries
where emp_no = 10001;

select count(salary) from salaries
where emp_no = 10001;

# AS 명령어
select * from employees
where birth_date >= '1960-01-01'
and birth_date <= '1969-12-31'
order by birth_date asc;

SELECT 
    emp_no AS '사번',
    first_name AS '이름',
    last_name AS '성씨',
    gender AS '성별',
    birth_date AS '생일',
    hire_date AS '입사일'
FROM
    employees
WHERE
    birth_date >= '1960-01-01'
        AND birth_date <= '1969-12-31'
ORDER BY birth_date ASC;

SELECT 
    emp_no AS '사번',
    first_name AS '이름',
    last_name AS '성씨',
    gender AS '성별',
    birth_date AS '생일',
    hire_date AS '입사일'
FROM
    employees as emp;

# 조인을 사용하여 여거개애    
select * from employees;
select * from salaries;
select * from titles;

select * from employees join salaries
on employees.emp_no = salaries.emp_no;

select * from salaries where emp_no = 10001;

# 사번, 이름, 성씨, 성별, 연봉
select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
from employees join salaries
on employees.emp_no = salaries.emp_no;

select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
from employees join salaries
on employees.emp_no = salaries.emp_no
and employees.emp_no = 100001;

# AS를 사용한 JOIN
SELECT 
    emp.emp_no,
    emp.first_name,
    emp.last_name,
    emp.gender,
    sal.salary,
    sal.from_date
FROM
    employees as emp
        JOIN
    salaries as sal ON emp.emp_no = sal.emp_no
and emp.emp_no = 100001;

select * from employees;

# 문제 4) 
# join을 사용하여 employees 테이블과 salaries에서 
# 사번이 11000 이하인 여성만 출력하세요
SELECT 
    *
FROM
    employees
        JOIN
    salaries ON employees.emp_no = salaries.emp_no
and employees.gender = 'f'
and employees.emp_no <= 11000;

# 문제 5)
# 사번이 24587인 사람의 사번, 성, 이름, 성별, 현재 급여, 현재급여를 받기 시작한 날을 출력하세요.

SELECT 
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.gender,
    sal.salary,
    sal.from_date,
    sal.to_date
FROM
    employees as emp
        JOIN
    salaries as sal ON emp.emp_no = sal.emp_no
and emp.emp_no = 10042
order by sal.from_date desc
limit 1;

SELECT 
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.gender,
    sal.salary,
    sal.from_date,
    sal.to_date
FROM
    employees as emp
        JOIN
    salaries as sal ON emp.emp_no = sal.emp_no
and emp.emp_no = 24587
and sal.to_date = '9999-01-01';

SELECT 
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.gender,
    sal.salary,
    sal.from_date,
    sal.to_date
FROM
    employees as emp
        JOIN
    salaries as sal ON emp.emp_no = sal.emp_no
and emp.emp_no = 24587
and sal.to_date >= now();

SELECT 
    max(to_date)
FROM
    salaries
where emp_no
in (24587);

# max 이용 풀이 (이중 쿼리)
select
	emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.gender,
    sal.salary,
    sal.from_date,
    sal.to_date
from
	employees as emp
        JOIN
    salaries as sal ON emp.emp_no = sal.emp_no
and emp.emp_no = 10042
where sal.to_date 
in (SELECT 
    max(to_date)
FROM
    salaries
where emp_no = 10042);

select * from salaries where emp_no = 10042;





