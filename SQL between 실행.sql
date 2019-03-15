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