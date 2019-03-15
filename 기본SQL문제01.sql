create database db_ysd;

show databases;

use db_ysd;
show tables;

create table db_ysd (
UserID varchar(16) not null,
UserPW varchar(16) not null,
UserNM varchar(16),
UserEmail varchar(50),
UserAddr varchar(200),
RegDate date not null,
primary key (UserID)
);

desc db_ysd;

drop table db_ysd;
show tables;

create table tb_ysd (
UserID varchar(16) not null,
UserPW varchar(16) not null,
UserNM varchar(16),
UserEmail varchar(50),
UserAddr varchar(200),
RegDate date not null,
primary key (UserID)
);

desc tb_ysd;