use db_ysd;

show tables;

create table addressbook (
	num int(10) not null,
	f_name varchar(20) not null,
	l_name varchar(20) not null,
    gender varchar(1),
    tel varchar(12),
    birth_day date not null,
	email varchar(50) not null,
	address varchar(200) not null,
	primary key (num)
);

show tables;

desc addressbook;