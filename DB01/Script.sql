CREATE TABLE  member2 ( 
	id varchar2(100),
	pw varchar2(100),
	name varchar2(100),
	tel varchar2(100)
)


INSERT INTO MEMBER2 VALUES ('park', '1234', 'park', '011')

INSERT INTO MEMBER2 VALUES ('apple', '1111', 'apple', '011')

INSERT INTO MEMBER2 VALUES ('ice', '2222', 'ice', '011')

INSERT INTO MEMBER2 VALUES ('melon', '3333', 'melon', '011')

SELECT * FROM member2

CREATE TABLE bbs2 (
	id varchar2(100),
	title varchar2(100),
	content varchar2(100),
	writer varchar2(100)
)

CREATE TABLE "HR"."PRODUCT2" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
   ) 