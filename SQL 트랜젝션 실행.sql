use ysddb;

select * from brand;

update brand set hot = 'C' where num = 7;

start transaction;

update brand set hot = 'C';

rollback;

update brand set hot = 'C';

commit;

START TRANSACTION;

SELECT * FROM brand;

savepoint a;
    
UPDATE brand 
SET price = '1200'
WHERE num = 2;

savepoint b;

update brand
set price ='1200'
where num = 4;

savepoint c;

update brand
set price = '1000'
where num = 6;

select * from brand;

ROLLBACK TO SAVEPOINT C; # 맥콜 가격이 900원으로 돌아감 ( 코카콜라, 칠성사이다 가격은 그대로)

ROLLBACK TO SAVEPOINT B;

ROLLBACK TO SAVEPOINT A;

# ROLLBACK
COMMIT;

select * from student;
# 문제 1) student 테이블의 내용을 트랜젝션을 사용하여(세이브포인트 사용안함) 모든내용을 삭제하고 다시 롤백하세요.
start transaction;
delete from student;
rollback;

# 문제2) student 테이블의 내용 중 3명을 선정하여 연예인의 이름과 정보로 변경하고 다시 롤백하세요.
# 1명의 정보 수정 시 마다 savepoint를 각각 사용하고 다시 롤백하는 형태로 SQL 쿼리를 작성하세요.
select * from student;
start transaction;
savepoint a;
update student set stu_name = '송강호', stu_email = 'sgh@tj.co.kr', stu_age = 51, stu_addr = '김해' where stu_num = 1;

savepoint b;
update student set stu_name = '최민식', stu_email = 'cms@tj.co.kr', stu_age = 56, stu_addr = '서울' where stu_num = 2;

savepoint c;
update student set stu_name = '김윤석', stu_email = 'kys@tj.co.kr', stu_age = 50, stu_addr = '부산' where stu_num = 3;

select * from student;
rollback to savepoint c;
rollback to savepoint b;
rollback to savepoint a;

use ysddb;
show databases;
show tables;
desc student;

select * from employees;

select * from salaries;

select * from salaries
where emp_no = 10009;

# 조회 시간 비교
# from_date 1985-02-18
# to_date 1986-02-18
select * from salaries
where from_date = '1985-02-18';

select * from salaries
where to_date = '1986-02-18';

# CREATE INDEX idx_todate 
# ON salaries(to_date);

ALTER TABLE salaries
ADD INDEX idx_todate(to_date);

alter table salaries
drop index idx_todate;

SHOW INDEX FROM salaries;
rollback;
select * from employees;

# 문제 3) 
# employees 테이블에 index를 추가하여 검색속도를 높이세요
# hire_date 컬럼을 index 추가하기
# hire_date = '1992-10-15' 로 검색
# 1. 기존 값 검색하여 검색 속도 확인
# 2. index를 추가하여 검색 속도 확인
# 3. index를 삭제하고 검색 속도 확인
select * from employees where hire_date = '1992-10-15'; # 0.141

alter table employees 
add index idx_hire (hire_date);

select * from employees where hire_date = '1992-10-15'; # 0.016

alter table employees 
drop index idx_hire;

select * from employees where hire_date = '1992-10-15'; # 0.156

show index from employees;

# VIEW
SELECT * FROM employees;

select emp_no, first_name, last_name, gender
from employees
where gender = 'f';

create view emp_gender as (select emp_no, first_name, last_name, gender
from employees
where gender = 'f');

drop view emp_gender;

select * from emp_gender;

select * from employees
where emp_no between 20000 and 30000
and first_name in ('mario', 'armond');

create view view_marioArmond 
as (select * from employees
where emp_no between 20000 and 30000
and first_name in ('mario', 'armond'));

select * from view_marioArmond;

# join을 사용하여 쿼리문을 뷰로 생성
select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.gender,
    b.salary,
    b.from_date
from employees as a
join salaries as b
on a.emp_no = b.emp_no
and a.first_name = 'mario';

create view view_mario
as (select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.gender,
    b.salary,
    b.from_date
from employees as a
join salaries as b
on a.emp_no = b.emp_no
and a.first_name = 'mario');

select * from view_mario;

# 문제 4)
# 테이블 employees, titles 를 join하여
# 사번 145679인 사람의 사번, 이름, 성, 성별, 입사일, 직급, 진급일을 출력하는 뷰를 생성하세요
# 기존 join 문의 결과와 뷰 생성 후 간단한 쿼리문의 결과각 같아야 함
select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.gender,
    a.hire_date,
    b.title,
    b.from_date
from employees as a
join titles as b
on a.emp_no = b.emp_no
and a.emp_no = 14567;

create view view_q4 
as(select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.gender,
    a.hire_date,
    b.title,
    b.from_date
from employees as a
join titles as b
on a.emp_no = b.emp_no
and a.emp_no = 14567);

select * from view_q4;
drop view view_q4;


# 문제 5)
# 사번 35478인 사람의 사번, 이름, 성, 생일, 입사일, 현재 직급, 현재 급여, 최근 호봉상승일을 출력하는 뷰를 생성하세요
# 기존 join 문의 결과와 뷰 생성 후 간단한 쿼리문의 결과각 같아야 함
# 결과가 1개만 나와야함
select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.birth_date,
    a.hire_date,
    b.title,
    c.salary,
    c.from_date
from employees as a
join titles as b
join salaries as c
on a.emp_no = b.emp_no
and b.emp_no = c.emp_no
and a.emp_no = 35478
order by c.from_date desc
limit 2;

select * from employees where emp_no = 35478;
select * from titles where emp_no = 35478;
select * from salaries where emp_no = 35478;

create view view_q5
as(select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.birth_date,
    a.hire_date,
    b.title,
    c.salary,
    c.from_date
from employees as a
join titles as b
join salaries as c
on a.emp_no = b.emp_no
and a.emp_no = c.emp_no
and a.emp_no = 35478
order by c.from_date desc
limit 2);

select * from view_q5;
drop view view_q5;

create view view_q5_3
as(
select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.birth_date,
    a.hire_date,
    b.title,
    b.from_date as bfrom,
    b.to_date as bto,
    c.salary,
    c.from_date as cfrom,
    c.to_date as cto
from employees as a
join titles as b
join salaries as c
on a.emp_no = b.emp_no
and b.emp_no = c.emp_no
and a.emp_no = 10004
and c.to_date between b.from_date and b.to_date # 조건문 에서는 as가 안 먹힘
);

select * from view_q5_3;

select * from view_q5_3 
order by cfrom desc limit 1;

select * from view_q5_3
where cfrom in (select
	max(cfrom)
from view_q5_3);

drop view view_q5_3;

select
	a.emp_no,
    a.first_name,
    a.last_name,
    a.birth_date,
    a.hire_date,
    b.title,
    c.salary,
    c.from_date as cfrom,
    b.from_date as bfrom, 
    c.to_date
from employees as a
join titles as b
join salaries as c
on a.emp_no = b.emp_no
and a.emp_no = c.emp_no

and a.emp_no = 35478
and c.to_date >= now()
order by bfrom desc limit 1;

select
	e.emp_no,
    t.title,
    t.from_date as tfrom,
    t.to_date as tto,
    s.salary,
    s.from_date as sfrom,
    s.to_date as sto
from employees as e
join titles as t
join salaries as s
on e.emp_no = t.emp_no
and t.emp_no = s.emp_no
and e.emp_no = 35478

and s.to_date between t.from_date and t.to_date
order by sfrom desc limit 1;





