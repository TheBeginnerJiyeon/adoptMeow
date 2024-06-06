USE scott;

drop table MEOW_BOARD;

DROP TABLE USERS cascade;


CREATE TABLE USERS(
	no INT AUTO_INCREMENT PRIMARY KEY,
	USER_CATEGORY INT,
	id varchar(100) UNIQUE,
	pw varchar(100),
	name varchar(100),
	tel varchar(20),
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (USER_CATEGORY) REFERENCES USERS_CATEGORY(C_CODE) on update cascade on delete cascade
);

INSERT INTO USERS
VALUES(NULL, 20,'1', '1', '리사', '010',NOW());
INSERT INTO USERS
VALUES(NULL, 20,'2', '2', '주혁', '010',NOW());
INSERT INTO USERS
VALUES(NULL,20,'3', '3', '하니', '010',NOW());
INSERT INTO USERS
VALUES(NULL,20,'4', '4', '중근', '010',NOW());
INSERT INTO USERS
VALUES(NULL,20,'5', '5', '지연', '010',NOW());
INSERT INTO USERS
VALUES(NULL,10,'admin1', 'admin1', 'admin1', '010',NOW());
COMMIT;

SELECT * FROM USERS;

ALTER TABLE USERS
MODIFY COLUMN pw VARCHAR(100);




/*DELIMITER //

CREATE TRIGGER trg_useridafter2
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.id != OLD.id THEN
        -- Update created_person in the cat table
        UPDATE cat
        SET created_person = NEW.id
        WHERE created_person = OLD.id;

        -- Update modified_person in the cat table
        UPDATE cat
        SET modified_person = NEW.id
        WHERE modified_person = OLD.id;

        -- Update created_person in the meow_attachment table
        UPDATE meow_attachment
        SET created_person = NEW.id
        WHERE created_person = OLD.id;

        -- Update modified_person in the meow_attachment table
        UPDATE meow_attachment
        SET modified_person = NEW.id
        WHERE modified_person = OLD.id;

        -- Update writer in the meow_board table
        UPDATE meow_board
        SET writer = NEW.id
        WHERE writer = OLD.id;
    END IF;
END //

DELIMITER ;






DELIMITER //

CREATE TRIGGER deletetrigger1
    before DELETE
    ON users FOR EACH ROW
BEGIN
 
	DELETE FROM meow_attachment 
    WHERE meow_attachment.CREATED_PERSON  = old.id;
   
 
	DELETE FROM meow_attachment 
    WHERE meow_attachment.MODIFIED_PERSON  = old.id;
   
 
	DELETE FROM cat 
    WHERE cat.CREATED_PERSON  = old.id;
   
 
	DELETE FROM cat
    WHERE cat.MODIFIED_PERSON  = old.id;
   
	DELETE FROM meow_board  
    WHERE meow_board.writer  = old.id;
   
end //   

DELIMITER ;*/




drop table users_CATEGORY cascade;

CREATE TABLE USERS_CATEGORY(

  C_CODE INT PRIMARY KEY,
  C_NAME VARCHAR(30) CHECK(C_NAME IN('관리자', '일반'))  
);


INSERT INTO USERS_CATEGORY (C_CODE, C_NAME) VALUES(10, '관리자');
INSERT INTO USERS_CATEGORY (C_CODE, C_NAME) VALUES(20, '일반');
COMMIT;
SELECT * FROM USERS_CATEGORY;




DROP TABLE SHELTER;
CREATE TABLE SHELTER (
	ID VARCHAR(200) PRIMARY KEY,
	NAME VARCHAR(200),
	ADDR VARCHAR(200),
	TEL INT(100)
);

INSERT INTO SHELTER VALUES ('c100', 'GOOD', 'SEOUL', 011);

INSERT INTO SHELTER VALUES ('c200', 'JOA', 'BUSAN', 012);

INSERT INTO SHELTER VALUES ('c300', 'MARIA', 'ULSAN', 013);

INSERT INTO SHELTER VALUES ('c400', 'MY', 'KWANGJU', 014);

COMMIT;

SELECT * FROM SHELTER;


drop table color;

CREATE TABLE COLOR (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(100)
);

INSERT INTO COLOR(NAME) VALUES ('검정색');
INSERT INTO COLOR(NAME) VALUES ('흰색');
INSERT INTO COLOR(NAME) VALUES ('노란색');
INSERT INTO COLOR(NAME) VALUES ('보라색');
commit;
SELECT * FROM COLOR;



drop table cat_color;

CREATE TABLE CAT_COLOR (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    COLOR_ID1 INT,
    COLOR_ID2 INT,    
    NAME VARCHAR(100),
    FOREIGN KEY (COLOR_ID1) REFERENCES COLOR(ID) on update cascade on delete cascade,
    FOREIGN KEY (COLOR_ID2) REFERENCES COLOR(ID) on update cascade on delete cascade
);

INSERT INTO CAT_COLOR(COLOR_ID1,COLOR_ID2, NAME) VALUES (1,null, '검냥이');

INSERT INTO CAT_COLOR(COLOR_ID1,COLOR_ID2,NAME) VALUES (2,null,'흰둥이');

INSERT INTO CAT_COLOR(COLOR_ID1,COLOR_ID2,NAME) VALUES (1,2,'점박이');

INSERT INTO CAT_COLOR(COLOR_ID1,COLOR_ID2,NAME) VALUES (3,1,'노랑이');

INSERT INTO CAT_COLOR(COLOR_ID1,COLOR_ID2,NAME) VALUES (4,NULL,'보라둥이');
commit;
SELECT * FROM CAT_COLOR;



DROP TABLE CAT CASCADE;
CREATE TABLE CAT (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(100),
    CAT_COLOR_ID INT,
    CONTENT VARCHAR(500),
    AGE INT,
    SHELTER_ID VARCHAR(200) NOT NULL,
    IMG VARCHAR(255),
    CREATED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
    CREATED_PERSON VARCHAR (100),
  	MODIFIED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	MODIFIED_PERSON VARCHAR (100),
  	STATUS CHAR(1) DEFAULT 'Y',
  	FOREIGN KEY (SHELTER_ID) REFERENCES SHELTER(ID) on update cascade on delete cascade,
  	FOREIGN KEY (CAT_COLOR_ID) REFERENCES CAT_COLOR(ID) on update cascade on delete cascade,
  	FOREIGN KEY (CREATED_PERSON) REFERENCES USERS(ID) on update cascade on delete cascade,
  	FOREIGN KEY (MODIFIED_PERSON) REFERENCES USERS(ID) on update cascade on delete cascade

);



INSERT INTO CAT (NAME, CAT_COLOR_ID, CONTENT, AGE, SHELTER_ID, IMG, CREATED_PERSON, MODIFIED_PERSON, STATUS) VALUES
('CAT 1', 1, 'Description for CAT 1', 1, 'c100', 'image1.jpg', 1, 'admin1', 'Y'),
('CAT 2', 2, 'Description for CAT 2', 2, 'c200', 'image2.jpg', 2, 'admin1', 'Y'),
('CAT 3', 1, 'Description for CAT 3', 3, 'c300', 'image3.jpg', 1, 'admin1', 'Y'),
('CAT 4', 3, 'Description for CAT 4', 4, 'c400', 'image4.jpg', 3, 'admin1', 'Y'),
('CAT 5', 4, 'Description for CAT 5', 5, 'c100', 'image5.jpg', 'admin1', 'admin1', 'Y');

COMMIT;
select * from cat;


drop table MEOW_BOARD cascade;

CREATE TABLE MEOW_BOARD (
  NO INT PRIMARY KEY AUTO_INCREMENT,
  CAT_ID  int,
  TITLE VARCHAR(100),
  CONTENT TEXT NOT NULL,
  WRITER varchar(10) NOT NULL,
  COUNT INT DEFAULT 0 NOT NULL,
  CREATED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  STATUS CHAR(1) DEFAULT 'Y',
  FOREIGN KEY (WRITER) REFERENCES USERS(ID) on update cascade on delete cascade,
  FOREIGN KEY (CAT_ID) REFERENCES CAT(ID) on update cascade on delete cascade
);

INSERT INTO MEOW_BOARD 
( CAT_ID, TITLE, CONTENT, WRITER) 
VALUES(  1,  '게시글 1 ', '게시글1 CONTENT 입니다 ', '1');

INSERT INTO MEOW_BOARD 
(  CAT_ID, TITLE, CONTENT, WRITER) 
VALUES(  2, '게시글 2 ', '게시글2 CONTENT 입니다 ', '1');
INSERT INTO MEOW_BOARD 
( CAT_ID, TITLE, CONTENT, WRITER) 
VALUES(  3, '게시글 3 ', '게시글3 CONTENT 입니다 ', '2');
INSERT INTO MEOW_BOARD 
(  CAT_ID,TITLE, CONTENT, WRITER) 
VALUES(  4, '게시글 4 ', '게시글4 CONTENT 입니다 ', '2');
INSERT INTO MEOW_BOARD 
( CAT_ID,TITLE, CONTENT, WRITER) 
VALUES( 5, '게시글 5 ', '게시글5 CONTENT 입니다 ', '3');
commit;

SELECT * FROM MEOW_BOARD;




DROP TABLE MEOW_ATTACHMENT cascade;
-- 첨부파일 테이블 생성
CREATE TABLE MEOW_ATTACHMENT (
  ATTACHMENT_NO INT PRIMARY KEY AUTO_INCREMENT,
  REF_CAT_NO INT NOT NULL,
  ORIGINAL_NAME VARCHAR(255) NOT NULL,
  SAVED_NAME VARCHAR(255) NOT NULL,
  SAVE_PATH VARCHAR(1000) NOT NULL,
  THUMBNAIL_PATH VARCHAR(255),
  STATUS VARCHAR(1) DEFAULT 'Y',
  CREATED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  CREATED_PERSON VARCHAR (100),
  MODIFIED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  MODIFIED_PERSON VARCHAR (100),
  FOREIGN KEY (REF_CAT_NO) REFERENCES CAT(ID) on update cascade on delete cascade,
  FOREIGN KEY (CREATED_PERSON) REFERENCES USERS(ID) on update cascade on delete cascade,
  FOREIGN KEY (MODIFIED_PERSON) REFERENCES USERS(ID) on update cascade on delete cascade
);

SELECT * FROM MEOW_ATTACHMENT ;


