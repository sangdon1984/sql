USE ysddb;

create table brand 

select * from brand;

insert into brand (num, name, price, temp, company)
value (4, '칠성사이다', '1000', '0', '칠성');

insert into brand (name, company, price, num)
value ('데미소다 복숭아', '동아오츠카', '1000', 6);

insert into brand value ( 5, '핫식스', '1200', '0', '칠성');

insert into brand value ('밀키스', '코카콜라', '1000', 7);

insert into brand value ('밀키스', '코카콜라', '1000', 7, '0');
insert into brand value (7, '밀키스', '1200', '코카콜라');
insert into brand value (7, '밀키스', '1200', '','코카콜라');

insert into brand (num, name, price, temp, company)
values (8, '설탕커피', '300', '1', '맥심'), 
(9, '밀크커피', '300', '1', '맥심'),
(10, '블랙커피', '300', '1', '맥심');

delete from brand where num = 10;
delete from brand where num = 9;
delete from brand where name = '설탕커피';

# delete from brand;

select * from brand;

insert into brand (num, name, price, hot, company)
values (1, '팹시콜라', '1000', '0', '팹시'); # values 1줄만 실행됨

insert into brand (num, name, price, hot, company)
values (2, '코카콜라', '1000', '0', '코카콜라'),
(3, '데미소다 복숭아', '1000', '0', '동아오츠카'),
(4, '칠성사이다', '1000', '0', '롯데칠성'),
(5, '스프라이트', '1000', '0', '코카콜라'),
(6, '맥콜', '900', '0', '성남'),
(7, '핫식스', '1200', '0', '롯데칠성');

update brand set price = '500' where num = 5;

update brand set name = '비타500', price = '700', temp = '0', company = '광동제약' where num = 7;

update brand set price = '500'; # where 안 붙이면 price의 모든 값을 수정함

select * from brand;
select * from brand where hot is null;
select * from brand where hot is not null;
select * from brand where hot = '';









