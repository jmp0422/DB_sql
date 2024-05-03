-- CONNECTION: name=localhost 7
-- New script in localhost 7.
-- Connection Type: dev 
-- Url: jdbc:oracle:thin:@//localhost:1521/XE
-- workspace : H:\workspace\multi\03_db
-- Date: 2024. 5. 3.
-- Time: 오후 5:30:31
CREATE USER keyboard IDENTIFIED BY 1234;
grant connect, resource, dba TO keyboard;