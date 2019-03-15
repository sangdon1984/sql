# LIKE 사용하여 검색
SELECT emp_no, first_name, last_name, gender, birth_date FROM employees
WHERE first_name LIKE 'ar%';

SELECT emp_no, first_name, last_name, gender, birth_date FROM employees
WHERE first_name LIKE '%ond';

SELECT emp_no, first_name, last_name, gender, birth_date FROM employees
WHERE first_name LIKE 'a%d';

SELECT emp_no, first_name, last_name, gender, birth_date FROM employees
WHERE first_name LIKE '___io';

SELECT emp_no, first_name, last_name, gender, birth_date FROM employees
WHERE first_name LIKE 'ma___';

# 문제 2)
# 사번이 12000번 보다 빠른 사람 중 
# 이름의 중간 글자가 de 인 모든 사람을 검색하여 
# 사번, 이름, 성, 성별, 생일을 출력하세요.

SELECT 
    emp_no, first_name, last_name, gender, birth_date
FROM
    employees
WHERE
    emp_no < 12000
        AND first_name LIKE '%de%'; # and, or 쓸때는 where 한번만 쓰면 됨
        
# 문제 3) 
# 성씨의 글자수가 6자이고 앞 글자가 s이며 
# 성별이 여성인 사람 중
# 생일이 가장 빠른 10명을 화면에 출력하세요. 

SELECT * FROM employees
WHERE
    gender = 'F' 
    AND last_name LIKE 's_____'
ORDER BY birth_date ASC
LIMIT 10;





