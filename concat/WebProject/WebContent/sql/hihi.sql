drop table BOARD cascade constraint;

create table BOARD(
	BOARD_NUM NUMBER(5) PRIMARY KEY,
	BOARD_NAME VARCHAR(100) NOT NULL,
	BOARD_CONTENT VARCHAR(100) NOT NULL,
	BOARD_WRITER VARCHAR(100) NOT NULL,
	BOARD_DATE DATE,
	BOARD_VIWCNT NUMBER(5) NOT NULL,
	BOARD_LIKE NUMBER(5) NOT NULL,
	BOARD_DISLIKE NUMBER(5) NOT NULL,
	BOARD_BLAME NUMBER(5) NOT NULL,
	BOARD_WRITE_ID VARCHAR(50) NOT NULL
);
insert into BOARD values (2,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0222');
insert into BOARD values (3,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0223');
insert into BOARD values (4,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0222');
insert into BOARD values (5,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0223');
insert into BOARD values (6,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (7,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (8,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (9,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (10,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (12,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (13,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (14,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (15,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
insert into BOARD values (16,'신혜영','하이요오','조용철',sysdate,1,2,3,4,'gusdud0226');
commit;
