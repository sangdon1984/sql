create user 'SCOTT';

use mysql;

select * from user;

show databases;

grant all on hr_data.emp to 'SCOTT'@'%';

show grants for 'SCOTT'@'%';

create database hr_data;

use hr_data;

show tables;

create table EMP (
	EMPNO VARCHAR(6) not null,
	EMPNM varchar(40) not null,
	JUMINNO varchar(13),
    DEPTNO varchar(2) NOT NULL,
    HREDATE DATE NOT NULL,
	primary key (EMPNO)
);

show tables;

DESC emp;

desc addressbook;

create view v_emp as(
	select 
		empno,
        empnm,
        hredate
	from emp
);