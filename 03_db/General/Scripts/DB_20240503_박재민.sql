-- CONNECTION: name=localhost
-- New script in localhost.
-- Connection Type: dev 
-- Url: jdbc:oracle:thin:@//localhost:1521/XE
-- workspace : H:\workspace\multi\03_db
-- Date: 2024. 5. 3.
-- Time: 오후 5:40:22

-- computer/1234 계정생성 및 권한설정
CREATE USER computer IDENTIFIED BY 1234;
grant connect, resource, dba TO computer;

--computer/1234연결 후 mouse생성
CREATE USER mouse IDENTIFIED BY 1111;
--mouse 권한부여 / 키보드생성
grant connect TO mouse;
CREATE USER keyboard IDENTIFIED BY 1234; --에러

-- computer계정 resource 권한해제
REVOKE resourse FROM computer;

-- 테이블생성
CREATE TABLE X(
  NAME  VARCHAR2(10 BYTE)
 );

-- computer, mouse 삭제
drop USER computer CASCADE;
drop USER mouse CASCADE;