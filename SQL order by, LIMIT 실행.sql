use employees;

select * from employees;

# 이름을 기준으로 오름차순 정렬
select * from employees order by first_name;
select * from employees order by first_name desc;

# 이름을 기준으로 오름차순 정렬, 성을 기준으로 내림차순 정렬
select * from employees
order by first_name asc, last_name desc;

# 이름 기준 오름차순, 성 기준 내림차순, 사번 기준 오름차순
select * from employees
order by first_name asc, last_name desc, emp_no asc;

SELECT * FROM employees WHERE first_name
IN ('mario', 'armond', 'parto')
ORDER BY first_name ASC, emp_no ASC;

# 사번, 이름, 성, 성별 만 출력
SELECT emp_no, first_name, last_name, gender FROM employees;

SELECT emp_no, last_name, first_name, gender FROM employees;

# limit 사용
SELECT emp_no, last_name, first_name, gender FROM employees
LIMIT 10;

SELECT emp_no, first_name, last_name, gender
FROM employees LIMIT 10, 10;

SELECT emp_no, first_name, last_name, gender
FROM employees LIMIT 20, 10;

# ORDER BY 와 LIMIT 함께 사용하기
# 사번이 가장 느린 순서대로 20명 출력하기
SELECT 
    emp_no, first_name, last_name, gender, hire_date
FROM
    employees
ORDER BY emp_no DESC
LIMIT 0 , 20;

# 문제 1) 이름이 mario, parto 인 사람 중, where first_name in (mario, parto)
#		입사일(hire_date)이 가장 느린 사람 10명을, oder by hire_date desc
#		20번째 사람부터 출력하세요.(21~30). limit 20, 10;

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('mario' , 'parto')
ORDER BY hire_date DESC
LIMIT 20 , 10;








