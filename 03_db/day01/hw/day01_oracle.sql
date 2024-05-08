-- CONNECTION: name=localhost

-- New script in localhost 3.
-- Connection Type: dev 
-- Url: jdbc:oracle:thin:@//localhost:1521/XE
-- workspace : H:\workspace\multi\03_db
-- Date: 2024. 5. 3.
-- Time: 오후 2:01:05

-- 오라클 계정생성 system 으로 연결후 생성하고 권한주기 
create user scott identified by tiger;

grant connect, resource, dba TO scott;

--사용자 계정.테이블명
SELECT * FROM HR.EMPLOYEES;

--계정 수정
ALTER USER hr IDENTIFIED BY hr;

-- 계정 락 풀기 
ALTER USER hr account unlock;

--apple생성
CREATE USER apple IDENTIFIED BY apple;
--권한주기
grant connect, resource, dba TO apple;

CREATE USER computer IDENTIFIED BY 1234;
--권한주기
grant connect, resource, dba TO computer;
REVOKE resourse FROM computer;

CREATE TABLE X(
  NAME  VARCHAR2(10 BYTE)
 );

drop USER computer CASCADE;
drop USER mouse CASCADE;

--계정삭제 --CASCADE해주어야 계정과 관련된 데이터가 모두 삭제됨.
	--drop USER apple CASCADE;

--CREATE TABLE TEST
	--(ID varchar2(100)); 
	--insufficient PRIVILEGES 에러는 resource 권한이없어서 에러발생

-- RESOURCE: 사용자가 데이터베이스 오브젝트(예: 테이블, 인덱스, 시퀀스 등)를 생성
-- CONNECT: 사용자가 데이터베이스에 접속할 수 있는 기본적인 권한을 제공
-- DBA: 가장 높은 수준의 권한을 부여하며, 데이터베이스 관리자와 같은 모든 권한을 포함

--reovke 권한회수
	--REVOKE resource FROM apple;

--DDL(CREATE TABLE ) 및 제약조건

--DDL(DATA DEFINITION LANGUAGE) : 데이터 정의  언어
--객체(OBJECT) 를 만들고 (CREATE) , 수정(ALTER) 하고 삭제(DROP)하는 구문

--오라클에서의 객체 
--테이블 (TABLE), 뷰(VIEW), 시퀀스(SEQUENCE) , 인덱스(INDEX)
--패키지 (PACKAGE), 트리거(TRIGGER), 동의어(SYNONYM),
--프로시져(PROCEDURE), 함수(FUNCTION), 사용자 (USER)

--DCL(Data Control Language) - 데이터베이스에 접근하거나 객체에 권한을 주는등의 역할을 하는 언어
-- <사용자 관리>
-- : 사용자의 계정과 암호설정, 권한 부여

-- 오라클 데이터베이스를 설치하면 기본적으로 제공되는 계정
-- 1. SYS
-- 2. SYSTEM
-- 3. SCOTT(교육용 샘플 계정) : 11G 별도로 생성해야 함
-- 보안을 위한 데이터베이스 관리자
-- : 사용자가 데이터베이스의 객체(테이블, 뷰 등)에 대해
--   특정 권한을 가질 수 있게 하는 권한이 있음
--   다수의 사용자가 공유하는 데이터베이스 정보에 대한 보안 설정
--   데이터베이스에 접근하는 사용자마다 서로 다른 권한과 롤을 부여함

-- 권한 : 사용자가 특정 테이블에 접근할 수 있도록 하거나
--       해당 테이블에 SQL(SELECT/INSERT/UPDATE/DELETE)문을
--       사용할 수 있도록 제한을 두는 것
-- 시스템권한 : 데이터베이스 관리자가 가지고 있는 권한
--            CRAETE USER(사용자 계정 만들기)
--            DROP USER(사용자 계정 삭제)
--            DROP ANY TABLE(임의의 테이블 삭제)
--            QUERY REWRITE(함수 기반 인덱스 생성 권한)
--            BACKUP ANY TABLE(테이블 백업)

-- 시스템 관리자가 사용자에게 부여하는 권한
--            CREATE SESSION(데이터베이스에 접속)
--            CREATE TABLE (테이블 생성)
--            CREATE VIEW(뷰 생성)
--            CREATE SEQUENCE(시퀀스 생성)
--            CREATE PROCEDURE(프로시져 생성 권한)

-- WITH ADMIN OPTION
-- : 사용자에게 시스템 권한을 부여할 때 사용함
-- 권한을 부여받은 사용자는 다른 사용자에게 권한을 지정할 수 있음
-- <SYSTEM 계정으로 생성하기>
--GRANT CREATE SESSION TO SAMPLE
--WITH ADMIN OPTION;
-- 객체 권한 : 테이블이나 뷰, 시퀀스, 함수 등 각 객체별로
--           DML(SELECT/INSERT/UPDATE/DELETE)
-- GRANT 권한종류 [(컬럼명)] | ALL
-- ON 객체명 | ROLE 이름 | PUBLIC
-- TO 사용자이름;
-- 권한 종류     설정 객체
-- ALTER       TABLE, SEQUENCE
-- DELETE      TABLE, VIEW
-- EXECUTE     PROCEDURE
-- INDEX       TABLE
-- REFERENCES  TABLE
-- INSERT      TABLE, VIEW
-- SELECT      TABLE, VIEW, SEQUENCE
-- UPDATE      TABLE, VIEW




