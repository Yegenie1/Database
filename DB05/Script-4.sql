SELECT *
FROM STUDENT_INFORMATION si

SELECT *
FROM "record" r 

SELECT *
FROM SUBJECT2 s 

SELECT *
FROM DEPARTMENT d 

INSERT INTO DEPARTMENT VALUES('전자공학','공학관102')

INSERT INTO "record"  VALUES('403','자바','4.5')

INSERT INTO SUBJECT2 VALUES('자바','공학관102')

INSERT INTO STUDENT_INFORMATION  VALUES('403','최예진','영국','전자공학')

UPDATE STUDENT_INFORMATION SET 주소 = '수원' WHERE 주소 = '서울'

UPDATE STUDENT_INFORMATION SET 학생이름 = '홍길동' WHERE 학생이름 = '최예진'

SELECT *
FROM STUDENT_INFORMATION si ,DEPARTMENT d 
WHERE si.학과 =d.학과 

SELECT  si.학생번호 ,si.학생이름 ,si.주소 ,si.학과 ,d.학과사무실 ,s.강좌이름 ,s.강의실 ,r.성적 
FROM STUDENT_INFORMATION si
INNER JOIN DEPARTMENT d ON d.학과 = si.학과
INNER JOIN "record" r ON r.학생번호 = si.학생번호  
INNER JOIN SUBJECT2 s ON s.강좌이름 = r.강좌이름 

SELECT *
FROM STUDENT_INFORMATION si
LEFT OUTER JOIN "record" r
ON r.학생번호 = si.학생번호  

SELECT *
FROM SUBJECT2 s
RIGHT OUTER JOIN "record" r
ON s.강좌이름 = r.강좌이름 
--검색 결과 여러개 in 
SELECT * FROM STUDENT_INFORMATION si  WHERE 학생번호 IN (SELECT 학생번호 FROM "record" r WHERE 성적= 3.5)
--검색 결과 한개 =
SELECT * FROM "record" r WHERE 강좌이름 = (SELECT 강좌이름 FROM SUBJECT2 s  WHERE 강의실='공학관110')

INSERT INTO CHART  VALUES('사건의 지평선','6','윤하')

INSERT INTO GENRE VALUES('사건의 지평선','발라드')

INSERT INTO CHART  VALUES('VIBE','7','태양')

INSERT INTO GENRE VALUES('VIBE','발라드')

DELETE FROM GENRE g  WHERE 제목='사건의 지평선'

SELECT c.ID ,c.순위 ,c.제목,c.가수 ,g.장르  
FROM CHART c INNER JOIN GENRE g 
on c.ID  =g.ID 
ORDER BY 순위 



















