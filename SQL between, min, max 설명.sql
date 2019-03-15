# between : 지정한 범위내의 값을 출력하는 명령
# and 명령만 사용하여 between을 구현할 수 있음 

# select 컬럼1, 컬럼2, ... from 테이블
# where 검색조건 between 시작범위 and 끝범위

# min(), max() - ()붙으면 함수를 의미 : 지정한 컬럼의 최소, 최대값 출력
# SELECT 절에 사용함, 
# 함수의 매개변수로 컬럼명을 입력 
# select min(컬럼) from 테이블
# select max(컬럼) from 테이블

# count(), avg(), sum()
# count() : 지정한 조건에 맞는 값의 수를 출력
# select count(컬럼) from 테이블 where 검색조건

# avg() : 숫자열의 평균값을 출력
# select avg(컬럼) from 테이블 where 검색조건 

# sum() : 숫자열의 총합을 출력 
# select sum(컬럼) from 테이블 where 검색조건

# AS : 지정한 컬럼 및 테이블의 이름을 변경 - @@@굉장히 중요@@@
# as 는 join 명령을 사용할때 주로 사용함
# 2개 이상의 테이블을 조합하여 결과를 출력할 경우 해당하는 테이블 및 컬럼의 이름을 알아보기 쉽게 표시하는 효과가 있음
# select 절의 컬럼명을 입력 시 정식 입력 방식은 
# select 테이블명.컬럼명 from 테이블명

# as 사용시 변경된 테이블명.컬럼명으로 표시
# select 변경된 테이블명.컬럼명 from 테이블명 as 변경된 테이블명

# JOIN : 여러 테이블을 조합하여 데이터를 하나의 열로 표현한 것
# 여러 테이블을 연결하여 데이터를 검색
# 기본키와 참조키로 연결된 테이블을 검색

# ON : join 사용 시 각 테이블의 중복되는 값이 동일하다는 것을 표기하기 위한 명령

# INNER JOIN : 기본, JOIN이라고 표현, 교집합
# 2개 이상의 테이블에서 모두 존재하는 데이터를 출력하는 방식

# select 왼쪽테이블.컬럼1, 왼쪽테이블.컬럼2, ...
# 오른쪽 테이블.컬럼1, 오른쪽테이블.컬럼2, ...
# from 왼쪽테이블
# join 오른쪽테이블
# on 왼쪽테이블.기본키컬럼 = 오른쪽테이블.참조키컬럼
# and 검색조건

# LEFT JOIN : LEFT OUTER JOIN, 왼쪽 테이블의 모든 값과 중복되는 오른쪽 테이블의 값 출력

# RIGHT JOIN : RIGHT OUTER JOIN, 오른쪽 테이블의 모든 값과 중복되는 왼쪽 테이블의 값 출력

# FULL OUTER JOIN : 합집합, 두 테이블의 모든 값 출력 












