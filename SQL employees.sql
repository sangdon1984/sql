use employees;

select * from departments; # 부서번호, 부서명
select * from dept_emp; # 직원번호, 부서번호, 프롬, 투
select * from dept_manager; # 메니져번호, 부서번호, 프롬, 투
select * from employees; # 직원번호, 생일, 이름, 성, 성별, 고용일
select * from salaries; # 직원번호, 연봉, 프롬, 투
select * from titles; # 직원번호, 직급, 프롬, 투


select * from employees 
where first_name = 'mario';
# or first_name = 'parto';

select * from employees
where first_name in ('mario', 'parto'); # or와 in의 결과가 동일함

select * from employees
where first_name in ('mario', 'parto', 'armond');

select * from employees 
where first_name = 'mario'
or first_name = 'parto'
or first_name = 'armond';

select * from employees
where not gender = 'M';

select * from employees
where gender = 'M';

select * from employees where not gender = 'f'
and first_name = 'mario';

select * from employees where gender = 'f'
and first_name = 'mario';






