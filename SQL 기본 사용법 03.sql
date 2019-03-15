use ysddb;

select * from student;

insert into student (stu_num, stu_name, stu_email, stu_phone, stu_age, stu_addr, stu_gender, stu_regdate)
values (1, '배병헌', 'bbh@tj.com', '01012345678', 27, '양산', 'M', '2019-01-08');

insert into student (stu_name, stu_email, stu_phone, stu_age, stu_addr, stu_gender, stu_regdate)
values ('윤상돈', 'ysd@tj.com', '010', 34, '학장동', 'M', '2019-01-08 08:40:00');

insert into student (stu_name, stu_email, stu_phone, stu_age, stu_addr, stu_gender, stu_regdate)
values ('윤수영', 'ysy@tj.com', '01012345678', 27, '김해', 'M', '2019-01-08'),
('이도희', 'ldh@tj.com', '01012579456', 28, '창원', 'F', '2019-01-08 09:00:30'),
('이원규', 'lwk@tj.com', '01012579456', 28, '부곡동', 'M', '2019-01-08 09:00:30'),
('황선영', 'hsy@tj.com', '01012579456', 29, '중앙동', 'F', '2019-01-08 09:00:30'),
('황세진', 'hsj@tj.com', '01012579456', 39, '전포동', 'F', '2019-01-08 09:00:30');


use mysql;
select host, user, authentication_string from user;
show grants for 'ysd'@'%';
grant all on world.* to 'ysd'@'%';
grant all on sakila.* to 'ysd'@'%';







