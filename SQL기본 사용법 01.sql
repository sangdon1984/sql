# MySQL 기본 사용법

# MySQL 접속 방법

# 로컬 MySql DB 서버에 접속하기
# .\mysql -u 사용자id -p

# 외부 MySql 서버에 접속하기
# mysql -u 사용자id --host=접속주소 --port=포트번호 -p

# 192.168.41.186 내컴퓨터
# 192.168.50.215 선생님

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




