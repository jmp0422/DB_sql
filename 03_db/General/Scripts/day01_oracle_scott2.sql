-- CONNECTION: name=localhost
-- New script in localhost.
-- Connection Type: dev 
-- Url: jdbc:oracle:thin:@//localhost:1521/XE
-- workspace : H:\workspace\multi\03_db
-- Date: 2024. 5. 3.
-- Time: 오후 4:21:35

SELECT * FROM HR.EMPLOYEES;

--테이블 만들기 
--[표현식] :
--CREATE TABLE 테이블명(컬럼명 자료형(크기) , 컬럼명 자료형(크기)....);

CREATE TABLE MEMBER(
	ID VARCHAR2(100),
	PW VARCHAR2(100),
	NAME VARCHAR2(100),
	TEL VARCHAR2(100)
);

-- 컬럼에 주석달기 
--[표현식]
-- COMMENT ON COLUMN 테이블명.컬럼명 IS '주석내용'
COMMENT ON COLUMN MEMBER.ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.PW IS '비밀번호';
COMMENT ON COLUMN MEMBER.NAME IS '회원이름';
COMMENT ON COLUMN MEMBER.TEL IS '전화번호';

SELECT * 
FROM SYS.USER_TABLES;
WHERE TABLE_NAME = 'MEMBER'

INSERT INTO MEMBER VALUES ('100','1234','PARK','011');

INSERT INTO MEMBER VALUES ('200','1234','PARK','011');

INSERT INTO MEMBER VALUES ('300','1111','APPLE','011');

COMMIT;

SELECT * FROM MEMBER; --모든컬럼조회
SELECT ID FROM MEMBER; --특정컬럼하나만 조회

SELECT ID, PW
FROM "MEMBER"
WHERE ID ='300' -- 조건이 있고 특정 컬럼만 조회할때


--SELECT A.*
--FROM BONUS b WHERE A.ID = '300';

UPDATE "MEMBER" 
SET TEL = '900'
WHERE ID = '100';