use world;

select * from city;
select * from country;
select * from countrylanguage;

select * from city where Name = 'pusan';
select * from city where Name = 'seoul';
select * from city where Name = 'yangsan';
select * from city where CountryCode = 'KOR';
select * from city where District = 'kyongsangnam';

select * from city where Countrycode = 'usa';
select * from city where Countrycode = 'fra';
select * from city where Countrycode = 'deu';
select * from city where Countrycode = 'ita';

select * from city where id < 100;
select * from city where id > 4000;
select * from city where id <= 50;
select * from city where id >= 4000;
select * from city where id = 777; # id는 기본키(PK)이기 때문에 중복될수 없고 하나의 값만 나온다.
select * from city where id != 777;
select * from city where id <> 100;

# 조건 하나이상 주기
select * from city where id < 100;

SELECT * FROM city WHERE id > 100
AND id < 500
AND population > 50000
AND population < 100000;

SELECT * FROM countrylanguage WHERE countrycode = 'usa'
OR language = 'english';

SELECT * FROM city
WHERE id = 100
OR id = 200; 

SELECT * FROM country
WHERE indepyear = null;






