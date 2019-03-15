# MySQL 기본 사용법

# MySQL 접속 방법

# 로컬 MySql DB 서버에 접속하기
# .\mysql -u 사용자id -p

# 외부 MySql 서버에 접속하기
# mysql -u 사용자id --host=접속주소 --port=포트번호 -p

# 192.168.41.186 내컴퓨터
# 192.168.50.215 선생님

# 데이터베이스 확인
# show databases;

# 데이터베이스 생성
# create database DB명 옵션;
# create schema DB명 옵션;

# 데이터베이스 생성시 문자셋 설정
# create database DB명 default character set utf8;
# 8버전은 신경 안써도 되지만 예전 버전에는 옵션을 바꿔줘야 함

# 데이터베이스 삭제
# DROP DATABASE DB명;
# DROP SCHEMA DB명;

# 데이터 베이스 사용자 생성

# 사용자만 생성
# create user '사용자id';

# 사용자와 접속주소, 비밀번호를 동시에 생성
# create user '사용자id'@'접속주소' identified by '비밀번호';

# 사용자 확인
# use mysql;
# select host, user, authentication_string from user;

# 사용자 삭제
# drop user '사용자id';

# 사용자 비밀번호 변경 

# 구버전의 경우 (mysql 5.6까지, mariadb 사용시)
# 사용자 비밀번호는 root계정에서 수정이 가능 
# SQL의 DML 중 update 구문을 이용하여 사용자의 비밀번호를 수정함 
# update user set password=password('pass') where user = 'userid';

# 최신버전의 경우 (mysql 5.7 이상 사용시)
# 사용자의 비밀번호는 root계정에서 수정 가능
# SQL의 DDL의 alter 구문을 사용하여 사용자의 비밀번호를 수정함 
# alter user 'userid'@'address' identified with mysql_native_password by '신규비밀번호';

# 실행 사항 즉시 적용
# mysql에서 콘솔로 ddl 및 dcl을 실행 시 db에 바로 적용되지 않는 현상이 발생할 수 있음
# 그렇기 때문에 바로 적용을 위해서는 적용 명령어를 입력하여 db에 바로 적용을 해야함 
# flush privileges;

# DB 접근 권한 확인
# show grants for '사용자id'@'접속주소';

# DB 접근 권한 설정
# grant all on DBname.tablename to 'userid'@'connectaddress';
# grant all privileges on DBname.tablename to 'userid'@'connectAddress';

# 현재는 바껴서 못쓰는 방법
# mysql 5.6까지 사용가능(or mariadb)
# DB 접근 권한 및 password setting
# grant all privileges on DBname.tableName to 'userId'@'cntAddress' identified by 'password' with grant option;

# DB 접근 권한 삭제
# revoke all on DBname.tablename from 'userid'@'address

# 문제 1) 자신의 이름 이니셜로 사용자 id를 생성하고, 
# 비밀번호는 '더조은602'로 설정
# 데이터베이스를 자신의 이름 이니셜 + db라는 이름을 사용하여 
# utf8 문자셋으로 설정하여 생성하고 
# 생성한 사용자 id에 생성한 DB의 사용권한을 설정
# 마지막으로 생성된 id로 접속하여 생성된 DB가 보이는지 확인하시오

# DB table create
# Use DDL in SQL create 명령으로 테이블을 생성함 
# 테이블 생성 시 테이블 이름, 각각의 컬럼명, 컬럼의 데이터 타입, 제약 조건을 입력함
# create table tableName (
# 	컬럼명1 데이터타입 컬럼제약조건
# 	컬럼명2 데이터타입 컬럼제약조건
# 	컬럼명3 데이터타입 컬럼제약조건
# 	컬럼명n 데이터타입 컬럼제약조건
#	테이블 제약조건
# create table member (
#	num int(11) not null,
#	name varchar(10) not null,
#	tel varchar(12) not null,
#	email varchar(50),
#	address varchar(200),
#	primary key (num)
#);

# 테이블 구조 확인
# DESC 테이블명; @@@@@@

# 데이터 베이스에서 NULL 은 아무것도 존재하지 않는다 라는 의미
# not null 은 어떠한 값이라도 들어가야 한다는 의미임

# 테이블 삭제
# drop table 테이블명; 

# 테이블 내용 삭제
# truncate table 테이블명;

# 테이블의 내용 수정
# SQL의 DDL 을 사용하여 alter 명령어로 기존 테이블의 내용을 변경할 수 있음 

# 열(column) 추가
# alter table 테이블명 add 열이름 데이터타입 옵션

# 열(column) 타입 변경
# alter table 테이블명 modify 열이름 데이터타입 옵션 

# 열(column) 삭제 
# alter table 테이블명 drop 열이름;

# 제약 조건
# 기본키(primary key) : 하나의 테이블에 하나의 데이터를 식별하는데 사용하는 키 
# 보통 테이블에 하나의 컬럼에 적용함
# 하나의 데이터를 식별하기 위해서 여러개의 컬럼을 모아서 하나의 기본키로 설정하기도 함 
# 기본키 설정 시 UNIQUE와 NOT NULL 옵션이 사용됨 

# 참조키(foreign key) : 현재의 테이블에 다른 테이블의 정보를 불러와서 사용하는 키 
# 하나의 테이블에서 여러개의 참조키를 사용할 수 있음

# UNIQUE : 현재 테이블에서 단 하나의 값을 가지는 조건 (중복되는 값이 존재하면 안됨)

# NOT NULL : 해당 컬럼이 비어있는 값으로 사용이 불가능함 

# SQL에서는 문자열 사용시 ""(쌍따옴표)를 사용하지 않음 
# 문자열 사용 시 ''(홑따옴표)만 사용


















