# 테이블 생성하기

CREATE TABLE STADIUM (
STADIUM_ID    CHAR(3) NOT NULL,
STADIUM_NAME  VARCHAR(40) NOT NULL,
HOMETEAM_ID   CHAR(3),
SEAT_COUNT    int,
ADDRESS       VARCHAR(60),
DDD           VARCHAR(3),
TEL           VARCHAR(10),
CONSTRAINT STADIUM_PK PRIMARY KEY (STADIUM_ID)
);

CREATE TABLE TEAM ( 
TEAM_ID CHAR(3) NOT NULL, 
REGION_NAME VARCHAR(8) NOT NULL, 
TEAM_NAME VARCHAR(40) NOT NULL, 
E_TEAM_NAME VARCHAR(50), 
ORIG_YYYY CHAR(4), 
STADIUM_ID CHAR(3) NOT NULL, 
ZIP_CODE1 CHAR(3), 
ZIP_CODE2 CHAR(3), 
ADDRESS VARCHAR(80), 
DDD VARCHAR(3), 
TEL VARCHAR(10), 
FAX VARCHAR(10), 
HOMEPAGE VARCHAR(50), 
OWNER VARCHAR(10), 
CONSTRAINT TEAM_PK PRIMARY KEY (TEAM_ID), 
CONSTRAINT TEAM_FK FOREIGN KEY (STADIUM_ID)  REFERENCES STADIUM(STADIUM_ID) );


CREATE TABLE PLAYER ( 
PLAYER_ID CHAR(7) NOT NULL,
PLAYER_NAME VARCHAR(20) NOT NULL,
TEAM_ID CHAR(3) NOT NULL,
E_PLAYER_NAME VARCHAR(40),
NICKNAME VARCHAR(30),
JOIN_YYYY CHAR(4),
POSITION VARCHAR(10),
BACK_NO TINYINT,
NATION VARCHAR(20),
BIRTH_DATE DATE,
SOLAR CHAR(1),
HEIGHT SMALLINT,
WEIGHT SMALLINT,
CONSTRAINT PLAYER_PK PRIMARY KEY (PLAYER_ID),
CONSTRAINT PLAYER_FK FOREIGN KEY (TEAM_ID) REFERENCES TEAM(TEAM_ID) 
); 

CREATE TABLE SCHEDULE (
STADIUM_ID   CHAR(3) NOT NULL,
SCHE_DATE    CHAR(8) NOT NULL,
GUBUN        CHAR(1) NOT NULL,
HOMETEAM_ID  CHAR(3) NOT NULL,
AWAYTEAM_ID  CHAR(3) NOT NULL,
HOME_SCORE   tinyint,
AWAY_SCORE   tinyint,
CONSTRAINT SCHEDULE_PK PRIMARY KEY (STADIUM_ID, SCHE_DATE),
CONSTRAINT SCHEDULE_FK FOREIGN KEY (STADIUM_ID) REFERENCES STADIUM(STADIUM_ID)
);

show tables;

desc team;
select * from team;

# 데이터 입력   

INSERT INTO stadium VALUES ('D03','전주월드컵경기장','K05',28000,'전북 전주시 덕진구 반월동 763-1','063','273-1763');
INSERT INTO stadium VALUES ('B02','성남종합운동장','K08',27000,'경기도 성남시 분당구 야탑동 486','031','753-3956');
INSERT INTO stadium VALUES ('C06','포항스틸야드','K03',25000,'경북 포항시 남구 괴동 1','054','282-2002');
INSERT INTO stadium VALUES ('D01','광양전용경기장','K07',20009,'전남 광양시 금호동 700','061','792-5600');
INSERT INTO stadium VALUES ('B05','서울월드컵경기장','K09',66806,'서울특별시 마포구 난지도길 66','02','2128-2973');
INSERT INTO stadium VALUES ('B01','인천월드컵경기장','K04',35000,'인천광역시 남구 문학동 482','031','666-0496');
INSERT INTO stadium VALUES ('C05','창원종합운동장','K11','27085','경남 창원시 두대동 145','055','6644-8468');
INSERT INTO stadium VALUES ('C04','울산문수경기장','K01',46102,'울산광역시 남구 옥산 산5','052','220-2468');
INSERT INTO stadium VALUES ('D02','대전월드컵경기장','K10',41000,'대전광역시 유성구 노은동 270','042','252-2002');
INSERT INTO stadium VALUES ('B04','수원월드컵경기장','K02',50000,'수원시 팔달구 우만1동 228번지','031','259-2150');
INSERT INTO stadium VALUES ('A02','광주월드컵경기장','K12','40245','광주광역시 서구 풍암동 423-2','062','2468-8642');
INSERT INTO stadium VALUES ('C02','부산아시아드경기장','K06',30000,'부산광역시 서구 서대신동 3가 210번지','051','247-5771');
INSERT INTO stadium VALUES ('A03','강릉종합경기장','K13',33000,'강원 강릉시 교동 산58','033','459-3631');
INSERT INTO stadium VALUES ('A04','제주월드컵경기장','K14',42256,'제주 서귀포시 법환동','064','3631-2460');
INSERT INTO stadium VALUES ('A05','대구월드컵경기장','K15',66422,'대구광역시 수성구 대흥동 504','053','602-2011');
INSERT INTO stadium VALUES ('F01','대구시민경기장','',30000,'대구광역시','054','');
INSERT INTO stadium VALUES ('F02','부산시민경기장','',30000,'부산광역시','051','');
INSERT INTO stadium VALUES ('F03','일산경기장','',20000,'경기도 일산시','031','');
INSERT INTO stadium VALUES ('F04','마산경기장','',20000,'경남 마산시','055','');
INSERT INTO stadium VALUES ('F05','안양경기장','',20000,'경기도 안양시','031','');


INSERT INTO team VALUES ('K05','전북','현대모터스','CHUNBUK HYUNDAI MOTORS FC','1995','D03','560','190',
'전북 전주시 덕진구 반월동 763-1 전주월드컵경기장 내','063','273-1763','273-1762','http://www.hyundai-motorsfc.com','');
INSERT INTO team VALUES ('K08','성남','일화천마','SEONGNAM ILHWA CHUNMA FC','1988','B02','462',
'130','경기도 성남시 분당구 야탑동 486번지 성남 제2종합운동장 내','031','753-3956','753-4443','http://www.esifc.com','');
INSERT INTO team VALUES ('K03','포항','스틸러스','FC POHANG STEELERS','1973','C06','790','050',
'경북 포항시 죽도동 614-8 동양빌딩 7층','054','282-2002','282-5955','http://www.steelers.co.kr','');
INSERT INTO team VALUES ('K07','전남','드래곤즈','CHUNNAM DRAGONS FC','1994','D01','544','010',
'전남 광양시 중동 1318-5 신한은행빌딩 2층','061','792-5600','792-5605','http://www.dragons.co.kr','');
INSERT INTO team VALUES ('K09','서울','FC서울','FOOTBALL CLUB SEOUL','1983','B05','138','221',
'서울 마포구 성산동 515 월드컵 경기장 내','02','2005-5746','2005-5802','http://www.fcseoul.com','');
INSERT INTO team VALUES ('K04','인천','유나이티드','INCHEON UNITED FC','2004','B01','110','728',
'인천광역시 남구 문학동 482 인천월드컵경기장 내','032','2121-5271','2121-5276','http://www.incheonutd.com','');
INSERT INTO team VALUES ('K11','경남','경남FC','GYEONGNAM FC','2006','C05','111','222',
'경남 창원시 두대동 145 창원종합운동장','055','6644-8468','6644-8488','http://www.gsndfc.co.kr','');
INSERT INTO team VALUES ('K01','울산','울산현대','ULSAN HYUNDAI FC','1986','C04','682','060',
'울산광역시 동구 서부동 산137-1 현대스포츠클럽하우스','052','230-6141','230-6145','http://www.uhfc.tv','');
INSERT INTO team VALUES ('K10','대전','시티즌','DAEJEON CITIZEN FC','1996','D02','301','030',
'대전광역시 유성구 노은동 270 대전월드컵경기장 서관 3층','042','252-2002','221-0669','http://www.dcfc.co.kr','');
INSERT INTO team VALUES ('K02','수원','삼성블루윙즈','SUWON SAMSUNG BLUEWINGS FC','1995','B04','440','220',
'수원시 팔달구 우만1동 228 수원월드컵경기장 4층','031','247-2002','257-0766','http://www.bluewings.kr','');
INSERT INTO team VALUES ('K12','광주','광주상무','GWANGJU SANGMU FC','1984','A02','450','419',
'광주광역시 서구 풍암동 423-2 광주월드컵경기장 내','062','777-5180','777-5181','http://www.gwangjusmfc.co.kr','');
INSERT INTO team VALUES ('K06','부산','아이파크','BUSAN IPARK FC','1983','C02','570','050',
'부산광역시 강서구 대저1동 2155번지 강서체육공원 내','051','555-7101','555-7103','http://www.busanipark.co.kr','');
INSERT INTO team VALUES ('K13','강원','강원FC','GANGWON FC','2008','A03','333','444',
'강원 춘천시 중앙로 7 강원도 개발공사 빌딩 내','033','459-3631','459-3630','http://www.gangwon-fc.com','');
INSERT INTO team VALUES ('K14','제주','제주유나이티드FC','JEJU UNITED FC','1982','A04','555','666',
'제주 서귀포시 강정동 3355-5','064','3631-2460','3631-2468','http://www.jeju-utd.com','');
INSERT INTO team VALUES ('K15','대구','대구FC','DAEGU FC','2002','A05','777','888',
'대구광역시 수성구 대흥동 504 대구스타디움 내','053','5566-3967','5566-3970','http://www.daegufc.co.kr','');


INSERT INTO schedule VALUES ('C02','20120501','Y','K06','K10','2','0');
INSERT INTO schedule VALUES ('B04','20120505','Y','K02','K01','1','2');
INSERT INTO schedule VALUES ('B05','20120505','Y','K09','K08','1','3');
INSERT INTO schedule VALUES ('B02','20120512','Y','K08','K01','1','1');
INSERT INTO schedule VALUES ('C02','20120707','Y','K06','K01','1','2');
INSERT INTO schedule VALUES ('B02','20120707','Y','K08','K03','3','2');
INSERT INTO schedule VALUES ('D03','20120707','Y','K05','K09','2','1');
INSERT INTO schedule VALUES ('D01','20120707','Y','K07','K10','1','0');
INSERT INTO schedule VALUES ('B04','20120710','Y','K02','K01','2','1');
INSERT INTO schedule VALUES ('D03','20120710','Y','K05','K03','1','1');
INSERT INTO schedule VALUES ('D02','20120710','Y','K10','K04','0','2');
INSERT INTO schedule VALUES ('C02','20120710','Y','K06','K08','3','1');
INSERT INTO schedule VALUES ('D01','20120710','Y','K07','K09','0','0');
INSERT INTO schedule VALUES ('C06','20120713','Y','K03','K06','2','1');
INSERT INTO schedule VALUES ('B05','20120714','Y','K09','K02','3','0');
INSERT INTO schedule VALUES ('B01','20120714','Y','K04','K07','1','0');
INSERT INTO schedule VALUES ('D02','20120714','Y','K10','K08','1','1');
INSERT INTO schedule VALUES ('D01','20120717','Y','K07','K01','0','0');
INSERT INTO schedule VALUES ('C06','20120717','Y','K03','K02','2','0');
INSERT INTO schedule VALUES ('B02','20120717','Y','K08','K04','2','1');
INSERT INTO schedule VALUES ('C02','20120717','Y','K06','K05','1','2');
INSERT INTO schedule VALUES ('B05','20120717','Y','K09','K10','1','1');
INSERT INTO schedule VALUES ('D01','20120720','Y','K07','K03','1','1');
INSERT INTO schedule VALUES ('B04','20120721','Y','K02','K06','2','2');
INSERT INTO schedule VALUES ('D03','20120721','Y','K05','K08','2','2');
INSERT INTO schedule VALUES ('B01','20120721','Y','K04','K09','1','3');
INSERT INTO schedule VALUES ('D03','20120724','Y','K05','K02','1','1');
INSERT INTO schedule VALUES ('D02','20120724','Y','K10','K03','1','1');
INSERT INTO schedule VALUES ('C02','20120724','Y','K06','K07','0','1');
INSERT INTO schedule VALUES ('B02','20120724','Y','K08','K09','1','1');
INSERT INTO schedule VALUES ('C06','20120727','Y','K03','K04','2','1');
INSERT INTO schedule VALUES ('D01','20120727','Y','K07','K05','2','1');
INSERT INTO schedule VALUES ('C02','20120727','Y','K06','K10','3','0');
INSERT INTO schedule VALUES ('B05','20120728','Y','K09','K01','1','1');
INSERT INTO schedule VALUES ('B04','20120728','Y','K02','K08','2','2');
INSERT INTO schedule VALUES ('B02','20120731','Y','K08','K01','2','0');
INSERT INTO schedule VALUES ('B05','20120731','Y','K09','K03','3','1');
INSERT INTO schedule VALUES ('D02','20120731','Y','K10','K05','1','0');
INSERT INTO schedule VALUES ('B01','20120731','Y','K04','K06','3','2');
INSERT INTO schedule VALUES ('B04','20120731','Y','K02','K07','1','2');
INSERT INTO schedule VALUES ('B02','20120803','Y','K08','K07','1','0');
INSERT INTO schedule VALUES ('C02','20120803','Y','K06','K09','2','1');
INSERT INTO schedule VALUES ('D02','20120804','Y','K10','K02','0','3');
INSERT INTO schedule VALUES ('D03','20120804','Y','K05','K04','2','1');
INSERT INTO schedule VALUES ('B01','20120811','Y','K04','K02','0','2');
INSERT INTO schedule VALUES ('B05','20120811','Y','K09','K05','0','1');
INSERT INTO schedule VALUES ('C06','20120811','Y','K03','K08','2','0');
INSERT INTO schedule VALUES ('D01','20120811','Y','K07','K10','1','1');
INSERT INTO schedule VALUES ('D03','20120818','Y','K05','K01','0','2');
INSERT INTO schedule VALUES ('C02','20120818','Y','K06','K03','3','1');
INSERT INTO schedule VALUES ('B01','20120818','Y','K04','K07','1','0');
INSERT INTO schedule VALUES ('B04','20120818','Y','K02','K09','1','2');
INSERT INTO schedule VALUES ('B02','20120818','Y','K08','K10','3','1');
INSERT INTO schedule VALUES ('B04','20120824','Y','K02','K01','1','1');
INSERT INTO schedule VALUES ('D03','20120824','Y','K05','K03','3','3');
INSERT INTO schedule VALUES ('B02','20120824','Y','K08','K06','4','3');
INSERT INTO schedule VALUES ('D02','20120825','Y','K10','K04','1','1');
INSERT INTO schedule VALUES ('B05','20120825','Y','K09','K07','1','1');
INSERT INTO schedule VALUES ('C06','20120828','Y','K03','K02','0','0');
INSERT INTO schedule VALUES ('C02','20120828','Y','K06','K05','1','1');
INSERT INTO schedule VALUES ('B01','20120828','Y','K04','K08','2','3');
INSERT INTO schedule VALUES ('B05','20120828','Y','K09','K10','2','0');
INSERT INTO schedule VALUES ('D02','20120901','Y','K10','K01','2','3');
INSERT INTO schedule VALUES ('D01','20120901','Y','K07','K03','0','1');
INSERT INTO schedule VALUES ('B04','20120901','Y','K02','K06','1','1');
INSERT INTO schedule VALUES ('D03','20120901','Y','K05','K08','3','3');
INSERT INTO schedule VALUES ('B01','20120901','Y','K04','K09','2','1');
INSERT INTO schedule VALUES ('D01','20120911','N','K07','K05','','');
INSERT INTO schedule VALUES ('B05','20120911','N','K09','K01','','');
INSERT INTO schedule VALUES ('B04','20120911','N','K02','K08','','');
INSERT INTO schedule VALUES ('B01','20120911','N','K04','K03','','');
INSERT INTO schedule VALUES ('D02','20120911','N','K10','K06','','');
INSERT INTO schedule VALUES ('C02','20120914','N','K06','K04','','');
INSERT INTO schedule VALUES ('C06','20120914','N','K03','K09','','');
INSERT INTO schedule VALUES ('B02','20120914','N','K08','K01','','');
INSERT INTO schedule VALUES ('D01','20120914','N','K07','K02','','');
INSERT INTO schedule VALUES ('D03','20120915','N','K05','K10','','');
INSERT INTO schedule VALUES ('D02','20120918','N','K10','K02','','');
INSERT INTO schedule VALUES ('B02','20120918','N','K08','K07','','');
INSERT INTO schedule VALUES ('B05','20120918','N','K09','K06','','');
INSERT INTO schedule VALUES ('D03','20120918','N','K05','K04','','');
INSERT INTO schedule VALUES ('B04','20120925','N','K02','K10','','');
INSERT INTO schedule VALUES ('C06','20120925','N','K03','K01','','');
INSERT INTO schedule VALUES ('B01','20120925','N','K04','K05','','');
INSERT INTO schedule VALUES ('D01','20120925','N','K07','K08','','');
INSERT INTO schedule VALUES ('B05','20120925','N','K09','K06','','');
INSERT INTO schedule VALUES ('D01','20121019','N','K07','K02','','');
INSERT INTO schedule VALUES ('C06','20121019','N','K03','K09','','');
INSERT INTO schedule VALUES ('D02','20121020','N','K10','K05','','');
INSERT INTO schedule VALUES ('C02','20121020','N','K06','K04','','');
INSERT INTO schedule VALUES ('C06','20121023','N','K03','K04','','');
INSERT INTO schedule VALUES ('D03','20121023','N','K05','K07','','');
INSERT INTO schedule VALUES ('C02','20121023','N','K06','K10','','');
INSERT INTO schedule VALUES ('B02','20121023','N','K08','K02','','');
INSERT INTO schedule VALUES ('D01','20121026','N','K07','K06','','');
INSERT INTO schedule VALUES ('D02','20121027','N','K10','K03','','');
INSERT INTO schedule VALUES ('B01','20121027','N','K04','K01','','');
INSERT INTO schedule VALUES ('B05','20121027','N','K09','K08','','');
INSERT INTO schedule VALUES ('B04','20121027','N','K02','K05','','');
INSERT INTO schedule VALUES ('B04','20121030','N','K02','K04','','');
INSERT INTO schedule VALUES ('D02','20121030','N','K10','K08','','');
INSERT INTO schedule VALUES ('C06','20121102','N','K03','K07','','');
INSERT INTO schedule VALUES ('B05','20121103','N','K09','K04','','');
INSERT INTO schedule VALUES ('C02','20121103','N','K06','K02','','');
INSERT INTO schedule VALUES ('B02','20121103','N','K08','K05','','');
INSERT INTO schedule VALUES ('D03','20121106','N','K05','K06','','');
INSERT INTO schedule VALUES ('D01','20121106','N','K07','K01','','');
INSERT INTO schedule VALUES ('D02','20121106','N','K10','K09','','');
INSERT INTO schedule VALUES ('B01','20121106','N','K04','K08','','');
INSERT INTO schedule VALUES ('B04','20121106','N','K02','K03','','');
INSERT INTO schedule VALUES ('C06','20121109','N','K03','K05','','');
INSERT INTO schedule VALUES ('B05','20121110','N','K09','K07','','');
INSERT INTO schedule VALUES ('B01','20121110','N','K04','K10','','');
INSERT INTO schedule VALUES ('B02','20121110','N','K08','K06','','');
INSERT INTO schedule VALUES ('D01','20121113','N','K07','K04','','');
INSERT INTO schedule VALUES ('C02','20121113','N','K06','K03','','');
INSERT INTO schedule VALUES ('B04','20121113','N','K02','K09','','');
INSERT INTO schedule VALUES ('D03','20121113','N','K05','K01','','');
INSERT INTO schedule VALUES ('B05','20121117','N','K09','K05','','');
INSERT INTO schedule VALUES ('D02','20121117','N','K10','K07','','');
INSERT INTO schedule VALUES ('C06','20121117','N','K03','K08','','');
INSERT INTO schedule VALUES ('B01','20121117','N','K04','K02','','');
INSERT INTO schedule VALUES ('C04','20120508','Y','K01','K08','1','3');
INSERT INTO schedule VALUES ('C04','20120713','Y','K01','K05','0','0');
INSERT INTO schedule VALUES ('C04','20120720','Y','K01','K10','0','0');
INSERT INTO schedule VALUES ('C04','20120724','Y','K01','K04','1','1');
INSERT INTO schedule VALUES ('C04','20120803','Y','K01','K03','3','0');
INSERT INTO schedule VALUES ('C04','20120811','Y','K01','K06','0','0');
INSERT INTO schedule VALUES ('C04','20120828','Y','K01','K07','0','1');
INSERT INTO schedule VALUES ('C04','20120918','N','K01','K03',null,null);
INSERT INTO schedule VALUES ('C04','20121019','N','K01','K08',null,null);
INSERT INTO schedule VALUES ('C04','20121023','N','K01','K09',null,null);
INSERT INTO schedule VALUES ('C04','20121102','N','K01','K10',null,null);
INSERT INTO schedule VALUES ('C04','20121110','N','K01','K02',null,null);
INSERT INTO schedule VALUES ('C04','20121117','N','K01','K06',null,null);
INSERT INTO schedule VALUES ('C04','20121124','N','K01','K08',null,null);
INSERT INTO schedule VALUES ('C06','20120317','Y','K03','K02','1','2');
INSERT INTO schedule VALUES ('B02','20120317','Y','K08','K04','6','0');
INSERT INTO schedule VALUES ('D02','20120317','Y','K10','K06','2','1');
INSERT INTO schedule VALUES ('C05','20120317','Y','K11','K09','2','2');
INSERT INTO schedule VALUES ('D01','20120320','Y','K07','K01','1','2');
INSERT INTO schedule VALUES ('D03','20120320','Y','K05','K03','1','0');
INSERT INTO schedule VALUES ('B04','20120320','Y','K02','K08','2','3');
INSERT INTO schedule VALUES ('B05','20120320','Y','K09','K10','2','0');
INSERT INTO schedule VALUES ('B04','20120323','Y','K02','K05','2','0');
INSERT INTO schedule VALUES ('C02','20120324','Y','K06','K01','1','2');
INSERT INTO schedule VALUES ('B01','20120324','Y','K04','K03','1','1');
INSERT INTO schedule VALUES ('B05','20120324','Y','K09','K07','1','0');
INSERT INTO schedule VALUES ('D01','20120327','Y','K07','K06','2','1');
INSERT INTO schedule VALUES ('C06','20120327','Y','K03','K08','1','0');
INSERT INTO schedule VALUES ('C05','20120327','Y','K11','K10','0','1');
INSERT INTO schedule VALUES ('D03','20120406','Y','K05','K04','3','2');
INSERT INTO schedule VALUES ('B01','20120410','Y','K04','K02','2','0');
INSERT INTO schedule VALUES ('B02','20120410','Y','K08','K05','2','1');
INSERT INTO schedule VALUES ('D02','20120410','Y','K10','K07','1','1');
INSERT INTO schedule VALUES ('C02','20120410','Y','K06','K09','1','4');
INSERT INTO schedule VALUES ('D02','20120414','Y','K10','K01','0','2');
INSERT INTO schedule VALUES ('B02','20120414','Y','K08','K03','1','1');
INSERT INTO schedule VALUES ('B01','20120414','Y','K04','K05','1','0');
INSERT INTO schedule VALUES ('C02','20120414','Y','K06','K07','2','0');
INSERT INTO schedule VALUES ('D03','20120420','Y','K05','K08','2','2');
INSERT INTO schedule VALUES ('D01','20120420','Y','K07','K10','0','1');
INSERT INTO schedule VALUES ('B04','20120421','Y','K02','K04','3','2');
INSERT INTO schedule VALUES ('B05','20120421','Y','K09','K06','1','0');
INSERT INTO schedule VALUES ('B02','20120424','Y','K08','K02','1','1');
INSERT INTO schedule VALUES ('C06','20120424','Y','K03','K05','1','2');
INSERT INTO schedule VALUES ('C05','20120424','Y','K11','K07','1','2');
INSERT INTO schedule VALUES ('D02','20120424','Y','K10','K09','1','3');
INSERT INTO schedule VALUES ('C06','20120427','Y','K03','K04','0','3');
INSERT INTO schedule VALUES ('C05','20120427','Y','K11','K06','5','2');
INSERT INTO schedule VALUES ('D01','20120427','Y','K07','K09','0','1');
INSERT INTO schedule VALUES ('D03','20120428','Y','K05','K02','1','2');
INSERT INTO schedule VALUES ('B05','20120501','Y','K09','K01','0','0');
INSERT INTO schedule VALUES ('B04','20120501','Y','K02','K03','1','2');
INSERT INTO schedule VALUES ('B01','20120501','Y','K04','K08','2','2');
INSERT INTO schedule VALUES ('D03','20120904','Y','K05','K02','1','2');
INSERT INTO schedule VALUES ('B02','20120904','Y','K08','K09','1','0');
INSERT INTO schedule VALUES ('C05','20120904','Y','K11','K04','2','2');
INSERT INTO schedule VALUES ('C06','20120904','Y','K03','K10','0','0');
INSERT INTO schedule VALUES ('C02','20120904','Y','K06','K07','2','2');


INSERT INTO player VALUES ('2009175','우르모브','K06',null,null,'2009','DF','4','유고','1987-08-30','1','180','70');
INSERT INTO player VALUES ('2007188','윤희준','K06',null,null,'2005','DF','15',null,'1982-11-01','1','180','74');
INSERT INTO player VALUES ('2012073','김규호','K06',null,null,'2011','DF','23',null,'1989-07-13','1','177','72');
INSERT INTO player VALUES('2007178','김민성','K06',null,null,null,'DF','20',null,'1983-1-6','1','182','73');
INSERT INTO player VALUES('2007191','김장관','K06',null,'배추도사,작은삼손','2007','DF','18',null,'1984-5-6','2','170','61');
INSERT INTO player VALUES('2008384','김정효','K06',null,'깜둥이,통키통','2008','DF','19',null,'1985-10-7','2','174','68');
INSERT INTO player VALUES('2008395','장대일','K06',null,'달구','2010','DF','7',null,'1985-9-3','2','184','79');
INSERT INTO player VALUES('2011050','박상수','K06',null,'꼬마홍길동','2011','DF','36',null,'1988-12-6','1','173','65');
INSERT INTO player VALUES('2007189','정재영','K06',null,'제리','2006','MF','6',null,'1983-2-9','2','187','75');
INSERT INTO player VALUES('2011049','정태민','K06',null,'킹카','2011','MF','38',null,'1992-5-25','1','180','71');
INSERT INTO player VALUES('2010107','정현우','K06',null,null,'2010','MF','37',null,'1991-4-6','1','178','70');
INSERT INTO player VALUES('2011043','송종국','K06',null,'썰렁왕자','2011','MF','24',null,'1989-2-20','1','177','73');
INSERT INTO player VALUES('2011044','오정석','K06',null,'서경석','2011','MF','13',null,'1988-8-9','1','178','74');
INSERT INTO player VALUES('2012137','이고르','K06','이골 실바 데 페리이따스','이골','2012','MF','21','브라질','1989-2-10','1','181','76');
INSERT INTO player VALUES('2007200','김용하','K06',null,'용식이','2007','MF','26',null,'1983-12-15','2','173','66');
INSERT INTO player VALUES('2012072','전상배','K06',null,null,'2012','MF','14',null,'1989-3-22','1','176','67');
INSERT INTO player VALUES('2009038','전우근','K06',null,'에너자이져','2009','MF','11',null,'1987-2-2','2','175','68');
INSERT INTO player VALUES('2008365','이태성','K06',null,null,'2011','MF','30',null,'1987-6-16','1','177','64');
INSERT INTO player VALUES('2011047','황철민','K06',null,'사다리맨','2011','MF','35',null,'1988-11-20','1','175','68');
INSERT INTO player VALUES('2008235','정관규','K06',null,null,null,'FW','39',null,'1986-10-10','1','178','71');
INSERT INTO player VALUES('2011048','정기종','K06',null,null,'2011','FW','25',null,'1985-5-22','1','182','78');
INSERT INTO player VALUES('2012074','정창오','K06',null,'임땡','2012','FW','27',null,'1988-1-10','1','186','82');
INSERT INTO player VALUES('2012127','디디','K06','Sebastiao Pereira do Nascimento',null,'2012','FW','8','브라질','1986-2-24','1','179','78');
INSERT INTO player VALUES('2007182','마니치','K06',null,'바람의 아들','2006','FW','9',null,'1982-1-16','2','184','80');
INSERT INTO player VALUES('2007195','우성용','K06',null,'따따','2006','FW','22',null,'1983-8-18','2','191','76');
INSERT INTO player VALUES('2010103','장기봉','K06',null,'짝팔','2010','FW','12',null,'1987-7-8','1','180','71');
INSERT INTO player VALUES('2012075','이광수','K06',null,null,'2012','FW','29',null,'1989-9-25','1','177','73');
INSERT INTO player VALUES('2010087','하리','K06',null,null,'2010','FW','10','콜롬비아','1984-5-14','1','168','65');
INSERT INTO player VALUES('2000017','박상남','K06',null,null,'2008','FW','32',null,'1985-7-9','2','188','80');
INSERT INTO player VALUES('2000018','빅토르','K06',null,'빅토르','2011','FW','28','나이지리아','1985-5-1','1','183','79');
INSERT INTO player VALUES('2000021','이윤겸','K04','LEE, YOONGYUM',null,'2002','DF',null,null,null,null,'178','80');
INSERT INTO player VALUES('2000022','하재훈','K04','HA, JAEHON',null,'2002','DF',null,null,null,null,'174','67');
INSERT INTO player VALUES('2000023','김충호','K04','KIM, CHUNGHO',null,'2009','DF',null,null,null,null,'185','83');
INSERT INTO player VALUES('2000024','임기한','K04','LIM, GIHAN',null,'2004','DF',null,null,null,null,'177','85');
INSERT INTO player VALUES('2000025','김경태','K04','KIM, KYOUNGTAE',null,null,'DF',null,null,null,null,null,null);
INSERT INTO player VALUES('2012054','남현우','K04',null,null,null,'GK','31',null,'1989-4-20','2','180','72');
INSERT INTO player VALUES('2008499','김충호','K04',null,null,null,'GK','60',null,'1978-4-7','2','185','83');
INSERT INTO player VALUES('2011021','이현','K04',null,null,null,'GK','1',null,'1988-7-11','2','192','85');
INSERT INTO player VALUES('2012052','한동진','K04',null,null,null,'GK','21',null,'1989-8-25','2','183','78');
INSERT INTO player VALUES('2012126','다오','K04',null,null,null,'DF','61',null,'1992-9-25','2','190','80');
INSERT INTO player VALUES('2008182','최철','K04',null,null,null,'DF','15',null,'1983-8-20','2','176','77');
INSERT INTO player VALUES('2010112','송창남','K04',null,null,null,'DF','23',null,'1987-12-31','2','175','67');
INSERT INTO player VALUES('2008424','조승호','K04',null,null,null,'DF','2',null,'1985-5-13','2','179','70');
INSERT INTO player VALUES('2008450','윤중희','K04',null,null,null,'DF','5',null,'1985-8-12','1','177','75');
INSERT INTO player VALUES('2011022','김범직','K04',null,null,null,'DF','25',null,'1989-11-2','1','182','75');
INSERT INTO player VALUES('2012053','김상홍','K04',null,null,null,'DF','30',null,'1989-4-2','1','178','68');
INSERT INTO player VALUES('2000001','김태호','K10',null,null,null,'DF',null,null,'1971-1-29','1',null,null);
INSERT INTO player VALUES('2000002','정상수','K10','JEONG, SAMSOO',null,null,'DF',null,null,'1973-8-2','1',null,null);
INSERT INTO player VALUES('2000003','유동우','K10','YOU, DONGWOO',null,null,'DF','40',null,'1978-7-3','1','177','70');
INSERT INTO player VALUES('2000004','전기현','K10','JEON, GIHYUN',null,null,'DF',null,null,'1975-6-6','1',null,null);
INSERT INTO player VALUES('2012047','강성일','K10','KANG, SUNGIL',null,'2012','GK','30',null,'1989-4-6','1','182','80');
INSERT INTO player VALUES('2010057','김승준','K10','KIM, SEUNG06','개구멍','2010','GK','1',null,'1982-1-9','1','183','77');
INSERT INTO player VALUES('2007298','이은성','K10','LEE, EUNSUNG','수호천황','2007','GK','21',null,'1981-5-4','1','184','82');
INSERT INTO player VALUES('2007312','정대수','K10','JEONG, DAESOO',null,'2007','DF','15',null,'1985-3-20','1','184','74');
INSERT INTO player VALUES('2012051','정민기','K10',null,null,null,'DF','3',null,'1988-4-25','1','171','65');
INSERT INTO player VALUES('2010110','정성근','K10','JEONG, SUNGKEUN',null,'2010','DF','33',null,'1987-6-6','1','180','73');
INSERT INTO player VALUES('2011098','정영근','K10','JEONG, YOUNGKWEN',null,'2011','DF','5',null,'1988-12-10','1','180','70');
INSERT INTO player VALUES('2007301','정정수','K10','JEONG, 06GSOO',null,'2002','DF','36',null,'1985-1-17','2','180','74');
INSERT INTO player VALUES('2007309','김창엽','K10','KIM, CHANGYUP',null,'2007','DF','6',null,'1984-11-19','2','174','64');
INSERT INTO player VALUES('2007299','장철우','K10','01G, CHULWOO','폭주기관차','2010','DF','7',null,'1981-1-4','2','172','65');
INSERT INTO player VALUES('2011116','콜리','K10','O03 PAPA COLY','검은낙타(Black Camel)','2011','DF','29','세네갈','1985-5-20','1','182','75');
INSERT INTO player VALUES('2007313','홍광철','K10','HONG, KWANGCHUL',null,'2007','DF','4',null,'1984-9-10','2','172','65');
INSERT INTO player VALUES('2008461','강정훈','K10','KANG, 06GHOON',null,'2008','MF','38',null,'1986-2-20','1','175','65');
INSERT INTO player VALUES('2007306','공오균','K10','KONG, OHKYUN','CROW','2007','MF','22',null,'1984-10-8','2','177','72');
INSERT INTO player VALUES('2012049','정국진','K10','JEONG, KOOKJIN',null,'2012','MF','16',null,'1988-9-2','1','172','62');
INSERT INTO player VALUES('2011099','정동선','K10','JEONG, DONGSUN',null,'2011','MF','9',null,'1988-3-15','1','170','65');
INSERT INTO player VALUES('2010109','최경규','K10','CHOI, KUNGGUY',null,'2010','MF','10',null,'1987-10-3','1','177','72');
INSERT INTO player VALUES('2010111','최내철','K10','CHOI, RAECHEOL',null,'2010','MF','24',null,'1987-8-20','1','177','71');
INSERT INTO player VALUES('2012048','배성재','K10','BAE, SUNGJAE',null,'2012','MF','28',null,'1989-1-7','1','178','74');
INSERT INTO player VALUES('2012121','샴','K10',null,null,null,'MF','25',null,'1989-4-30','1','174','69');
INSERT INTO player VALUES('2012136','오비나','K10',null,null,null,'MF','26',null,'1990-3-6','1','169','70');
INSERT INTO player VALUES('2010056','김관우','K10','KIM, KWANWOO','SIRIUS','2010','MF','8',null,'1988-2-25','1','175','69');
INSERT INTO player VALUES('2012050','김광진','K10','KIM, KWANGJIN',null,'2012','MF','13',null,'1982-5-27','1','175','75');
INSERT INTO player VALUES('2010113','김상규','K10','KIM, SANGKYU',null,'2010','MF','27',null,'1987-5-9','1','175','65');
INSERT INTO player VALUES('2009151','임영주','K10','LIM, YOUNGJOO',null,'2009','MF','23',null,'1986-8-3','2','176','68');
INSERT INTO player VALUES('2011101','박영훈','K10','PARK, YOUNGHOON',null,'2011','MF','12',null,'1985-1-5','1','174','73');
INSERT INTO player VALUES('2008178','한정국','K10','HAN, 06GKOOK',null,'2011','MF','19',null,'1981-7-19','1','179','71');
INSERT INTO player VALUES('2012046','정광선','K10','JEONG, KWANGSUN',null,'2012','FW','32',null,'1993-6-17','1','175','68');
INSERT INTO player VALUES('2007315','정은중','K10','JEONG, EUN06G','샤프(SHARP)','2007','FW','18',null,'1989-8-4','2','184','72');
INSERT INTO player VALUES('2009152','정찬중','K10','JEONG. CHANJOONG',null,'2009','FW','17',null,'1986-6-6','2','182','72');
INSERT INTO player VALUES('2011032','김석','K10','KIM, SEOK',null,'2012','FW','20',null,'1989-1-2','1','194','85');
INSERT INTO player VALUES('2011100','탁준석','K10','TAK, 06SUK',null,'2011','FW','11',null,'1988-8-3','1','178','69');
INSERT INTO player VALUES('2000011','정호곤','K06',null,null,'2010','DF',null,null,'1971-11-3','1','172','77');
INSERT INTO player VALUES('2000012','최경훈','K06',null,null,null,'DF',null,null,'1971-5-1','1',null,null);
INSERT INTO player VALUES('2000013','정동훈','K06',null,null,'2010','DF',null,null,'1975-11-6','1','180','88');
INSERT INTO player VALUES('2000014','정남표','K06',null,null,'2005','DF',null,null,'1974-8-1','2','180','77');
INSERT INTO player VALUES('2000015','정광재','K06',null,null,'2005','DF',null,null,'1978-5-5','2','180','75');
INSERT INTO player VALUES('2000016','권혁준','K06',null,null,'2006','DF',null,null,'1980-3-5','1','173','82');
INSERT INTO player VALUES('2011052','정경진','K06',null,'임꺽정','2011','GK','41',null,'1988-7-2','2','186','78');
INSERT INTO player VALUES('2012076','정용대','K06',null,null,'2012','GK','40',null,'1989-11-10','1','189','83');
INSERT INTO player VALUES('2010108','정지혁','K06',null,null,'2010','GK','31',null,'1991-2-11','1','187','77');
INSERT INTO player VALUES('2010059','박유석','K06',null,'터프가이','2010','GK','1',null,'1987-10-6','2','186','78');
INSERT INTO player VALUES('2011053','정진우','K06',null,'터프가이','2011','DF','33',null,'1993-2-25','1','180','76');
INSERT INTO player VALUES('2007185','정학철','K06',null,null,'2005','DF','3',null,'1982-7-11','2','176','73');
INSERT INTO player VALUES('2007193','류병훈','K06',null,null,'2005','DF','17',null,'1986-3-7','2','184','68');
INSERT INTO player VALUES('2011055','최준홍','K06',null,'말머리','2011','DF','2',null,'1988-11-4','1','178','70');
INSERT INTO player VALUES('2011046','서용혁','K06',null,'터프가이','2011','DF','34',null,'1988-2-7','1','183','79');
INSERT INTO player VALUES('2010058','심재원','K06',null,'도날드 덕','2010','DF','5',null,'1987-11-3','1','184','77');
INSERT INTO player VALUES('2007123','김임생','K04',null,null,null,'DF','20',null,'1981-9-11','1','183','80');
INSERT INTO player VALUES('2007022','장형석','K04',null,null,null,'DF','36',null,'1982-7-7','1','181','72');
INSERT INTO player VALUES('2012058','박진성','K04',null,null,null,'DF','35',null,'1993-10-8','1','184','76');
INSERT INTO player VALUES('2009125','이거룩','K04',null,null,null,'DF','4',null,'1986-10-6','1','183','77');
INSERT INTO player VALUES('2010001','이정민','K04',null,null,null,'DF','3',null,'1987-7-10','1','183','78');
INSERT INTO player VALUES('2012134','페르난도','K04',null,null,null,'DF','44',null,'1988-1-2','1','178','74');
INSERT INTO player VALUES('2000094','김무건','K03','KIM, MUGYUN',null,null,'DF',null,null,'1971-5-3','1',null,null);
INSERT INTO player VALUES('2007001','정병지','K03','JEONG, BYUNGJI',null,'2011','GK','1',null,'1980-8-4','1','184','77');
INSERT INTO player VALUES('2011069','최주호','K03','CHOI, JUHO',null,'2011','GK','51',null,'1992-7-7','1','185','75');
INSERT INTO player VALUES('2007130','김대희','K03','KIM, DAEHEE',null,'2010','GK','31',null,'1984-4-4','1','192','88');
INSERT INTO player VALUES('2009133','김준호','K03','KIM, 06HO',null,'2009','GK','21',null,'1983-3-4','1','185','77');
INSERT INTO player VALUES('2011065','허인무','K03','HEO, INMOO',null,'2011','GK','41',null,'1988-2-4','1','187','81');
INSERT INTO player VALUES('2011056','강용','K03','KANG, YONG',null,'2011','DF','2',null,'1989-7-1','1','179','72');
INSERT INTO player VALUES('2007080','고병운','K03','GO, BYUNGWOON',null,'2006','DF','16',null,'1983-9-9','1','180','73');
INSERT INTO player VALUES('2012069','정광석','K03','JEONG, KWANGSUK',null,'2012','DF','39',null,'1993-10-2','1','183','72');
INSERT INTO player VALUES('2007002','정상훈','K03','JEONG, SANGHUN',null,'2006','DF','13',null,'1983-8-6','1','183','76');
INSERT INTO player VALUES('2012062','정석우','K03','JEONG, SEOKWOO',null,'2012','DF','32',null,'1993-6-5','1','181','72');
INSERT INTO player VALUES('2009139','정은석','K03','JEONG, EUNSEOK',null,'2009','DF','5',null,'1982-10-3','1','185','80');
INSERT INTO player VALUES('2009030','최민서','K03','CHOI, MINSEO',null,'2009','DF','3',null,'1986-11-8','2','180','78');
INSERT INTO player VALUES('2012064','성종현','K03','SUNG, JONGHUN',null,'2012','DF','34',null,'1989-2-4','1','178','74');
INSERT INTO player VALUES('2008468','싸빅','K03','Jasenko Sabitovic',null,'2007','DF','4',null,'1983-3-3','1','185','78');
INSERT INTO player VALUES('2007277','오명관','K03','OH, MYUNGKWAN',null,'2008','DF','15',null,'1984-4-4','1','185','76');
INSERT INTO player VALUES('2012063','김동식','K03','KIM, DONGSIK',null,'2012','MF','33',null,'1989-5-3','1','183','77');
INSERT INTO player VALUES('2012067','김수길','K03','KIM, SOOKIL',null,'2012','DF','37',null,'1989-9-4','1','179','69');
INSERT INTO player VALUES('2008444','김승엽','K03','KIM, SEUNGYUB',null,'2008','DF','12',null,'1985-12-10','1','180','74');
INSERT INTO player VALUES('2007101','김종화','K03',null,null,null,'DF','25',null,'1984-4-4','1','182','76');
INSERT INTO player VALUES('2007190','하석주','K03','HA, SEOKJU',null,'2011','DF','17',null,'1978-6-2','1','174','71');
INSERT INTO player VALUES('2010065','허제정','K03','HEO, JAE06G',null,'2010','DF','29',null,'1987-2-6','1','175','70');
INSERT INTO player VALUES('2007096','홍명보','K03','HONG, MYUNGBO',null,'2012','DF','20',null,'1979-12-2','1','181','72');
INSERT INTO player VALUES('2008472','정기남','K03','JEONG, KINAM',null,'2010','MF','6',null,'1981-7-1','1','174','72');
INSERT INTO player VALUES('2011059','정상록','K03','JEONG, SANGROK',null,'2011','MF','14',null,'1989-8-2','1','173','63');
INSERT INTO player VALUES('2011068','나희근','K03','NA, HEEKEUN',null,'2011','FW','22',null,'1989-5-5','1','178','72');
INSERT INTO player VALUES('2012133','레오','K03',null,null,null,'MF','45',null,'1984-9-10','1','179','74');
INSERT INTO player VALUES('2012124','메도','K03','Medvid Ivan',null,'2012','MF','44',null,'1987-11-10','1','180','78');
INSERT INTO player VALUES('2012068','최길영','K03','CHOI, KILYOUNG',null,'2012','MF','38',null,'1990-4-2','1','172','64');
INSERT INTO player VALUES('2008203','최상인','K03','CHOI, SANGIN',null,'2005','DF','27',null,'1986-10-3','1','174','63');
INSERT INTO player VALUES('2011131','옐라','K03','Josko Jelicic',null,'2012','MF','8',null,'1981-5-1','1','184','79');
INSERT INTO player VALUES('2011061','유현구','K03','YOU, HYUNGOO',null,'2011','MF','26',null,'1993-1-1','1','170','68');
INSERT INTO player VALUES('2009033','김기부','K03','KIM, KIBU',null,'2009','MF','18',null,'1986-2-3','2','183','76');
INSERT INTO player VALUES('2012070','김상인','K03','KIM, SANGIN',null,'2012','DF','40',null,'1989-11-7','1','178','70');
INSERT INTO player VALUES('2011062','김정운','K03','KIM, 06GWOON',null,'2011','MF','19',null,'1988-3-4','1','178','70');
INSERT INTO player VALUES('2012071','김중규','K03','KIM, 06GJYU',null,'2012','MF','42',null,'1989-6-6','1','170','64');
INSERT INTO player VALUES('2012066','김창호','K03','KIM, CHANGHO',null,'2012','MF','36',null,'1991-4-3','1','175','75');
INSERT INTO player VALUES('2011063','이종범','K03','LEE, JONGBUM',null,'2011','MF','24',null,'1988-5-3','1','178','68');
INSERT INTO player VALUES('2012061','남익경','K03','NAM, IKKYUNG',null,'2012','MF','30',null,'1993-6-1','1','177','70');
INSERT INTO player VALUES('2011064','윤보영','K03','YOON, BOYOUNG',null,'2011','FW','23',null,'1988-7-4','1','177','63');
INSERT INTO player VALUES('2008443','김동국','K03','KIM, DONGGOOK',null,'2008','FW','10',null,'1989-8-4','1','185','80');
INSERT INTO player VALUES('2012060','박종완','K03','PARK, JONGWAN',null,'2012','DF','28',null,'1993-5-8','1','188','82');
INSERT INTO player VALUES('2012059','김징요','K03','Jorge Claudio',null,'2011','FW','7','브라질','1985-1-10','1','174','70');
INSERT INTO player VALUES('2010044','이철우','K03','LEE, CHULWOO',null,'2010','FW','9',null,'1987-9-11','1','185','78');
INSERT INTO player VALUES('2011057','코난','K03','Goram Petreski',null,'2010','FW','11',null,'1982-10-5','1','180','76');
INSERT INTO player VALUES('2000095','정민규','K03','JEONG, MINJYU',null,'2012','MF','35',null,'1989-11-9','1','178','71');
INSERT INTO player VALUES('2000062','제형진','K01','JAE, HYUNGJIN',null,'2012','DF','38',null,'1989-12-6','1','179','75');
INSERT INTO player VALUES('2000063','곽기훈','K01','KWAK, KIHOON',null,'2012','FW','33',null,'1989-5-11','1','177','72');
INSERT INTO player VALUES('2000064','최민영','K01','CHOI, MINYOUNG',null,'2010','FW','37',null,'1991-7-3','1','174','67');
INSERT INTO player VALUES('2000071','김회택','K07',null,null,null,'DF',null,null,'1976-11-10','1',null,null);
INSERT INTO player VALUES('2000072','서현옥','K07',null,null,null,'DF',null,null,'1979-1-10','1',null,null);
INSERT INTO player VALUES('2000073','정상호','K07',null,null,null,'DF',null,null,'1974-5-10','1',null,null);
INSERT INTO player VALUES('2000074','최철우','K07',null,null,null,'DF',null,null,'1975-2-9','1',null,null);
INSERT INTO player VALUES('2012081','정영광','K07',null,null,null,'GK','41',null,'1993-3-6','1','185','80');
INSERT INTO player VALUES('2007227','최종문','K07',null,null,null,'GK','1',null,'1980-2-10','1','185','76');
INSERT INTO player VALUES('2012088','염동균','K07',null,null,null,'GK','31',null,'1993-6-9','1','189','83');
INSERT INTO player VALUES('2012089','김정래','K07',null,null,null,'GK','33',null,'1989-12-11','1','185','81');
INSERT INTO player VALUES('2008212','강철','K07',null,null,null,'DF','3',null,'1981-2-11','1','178','72');
INSERT INTO player VALUES('2012077','정강선','K07',null,null,null,'DF','37',null,'1989-3-5','1','180','73');
INSERT INTO player VALUES('2012083','정인호','K07',null,null,null,'DF','39',null,'1993-9-6','1','184','79');
INSERT INTO player VALUES('2007213','정태영','K07',null,null,null,'DF','7',null,'1980-8-11','1','180','74');
INSERT INTO player VALUES('2007209','정현수','K07',null,null,null,'DF','21',null,'1983-4-2','1','176','74');
INSERT INTO player VALUES('2012084','정형주','K07',null,null,null,'DF','42',null,'1989-5-6','1',null,null);
INSERT INTO player VALUES('2012085','정홍철','K07',null,null,null,'DF','36',null,'1989-2-6','1','181','69');
INSERT INTO player VALUES('2008359','마시엘','K07',null,null,null,'DF','24',null,'1982-5-3','1','177','70');
INSERT INTO player VALUES('2011034','김창원','K07',null,null,null,'DF','5',null,'1985-10-7','1','183','75');
INSERT INTO player VALUES('2012090','장경진','K07',null,null,null,'DF','34',null,'1993-6-8','1','184','82');
INSERT INTO player VALUES('2008425','주영호','K07',null,null,null,'DF','6',null,'1985-7-10','1','185','80');
INSERT INTO player VALUES('2012092','홍성요','K07',null,null,null,'DF','28',null,'1989-8-5','1','184','78');
INSERT INTO player VALUES('2009115','정경일','K07',null,null,null,'MF','49',null,'1990-9-8','1','170','65');
INSERT INTO player VALUES('2011035','정길식','K07',null,null,null,'MF','12',null,'1988-10-8','1','178','72');
INSERT INTO player VALUES('2010030','정남일','K07',null,null,null,'MF','4',null,'1987-11-3','1','182','76');
INSERT INTO player VALUES('2010032','정대욱','K07',null,null,null,'MF','18',null,'1988-2-4','1','182','73');
INSERT INTO player VALUES('2007210','정도근','K07',null,null,null,'MF','10',null,'1982-2-3','2','181','69');
INSERT INTO player VALUES('2012078','정동희','K07',null,null,null,'MF','38',null,'1993-6-5','1','174','64');
INSERT INTO player VALUES('2007102','정명곤','K07',null,null,null,'MF','2',null,'1984-12-4','1','177','73');
INSERT INTO player VALUES('2012079','정성진','K07',null,null,null,'MF','44',null,'1989-1-1','1','178','68');
INSERT INTO player VALUES('2012080','정승현','K07',null,null,null,'MF','26',null,'1989-2-8','1','181','71');
INSERT INTO player VALUES('2012082','정요환','K07',null,null,null,'MF','25',null,'1987-3-5','1','170','62');
INSERT INTO player VALUES('2009100','정정겸','K07',null,null,null,'MF','13',null,'1986-9-6','2','172','65');
INSERT INTO player VALUES('2008428','정종현','K07',null,null,null,'MF','11',null,'1983-10-7','1','173','68');
INSERT INTO player VALUES('2012086','노병준','K07',null,null,null,'MF','22',null,'1989-4-9','1','177','67');
INSERT INTO player VALUES('2012087','최종우','K07',null,null,null,'MF','43',null,'1989-11-4','1','176','69');
INSERT INTO player VALUES('2007305','조진원','K07',null,null,null,'MF','9',null,'1984-5-9','1','176','75');
INSERT INTO player VALUES('2012132','실바','K07',null,null,null,'MF','45',null,'1987-6-6','1','173','67');
INSERT INTO player VALUES('2010031','윤용구','K07',null,null,null,'MF','15',null,'1987-8-8','1','168','60');
INSERT INTO player VALUES('2011127','김반','K07',null,null,null,'MF','14',null,'1984-7-10','1','174','69');
INSERT INTO player VALUES('2011038','김영수','K07',null,null,null,'MF','30',null,'1988-8-7','1','175','65');
INSERT INTO player VALUES('2008423','임관식','K07',null,null,null,'MF','29',null,'1985-9-7','1','172','68');
INSERT INTO player VALUES('2011036','이정호','K07',null,null,null,'MF','23',null,'1988-6-4','1','176','71');
INSERT INTO player VALUES('2011039','하기윤','K07',null,null,null,'MF','32',null,'1992-10-3','1','180','65');
INSERT INTO player VALUES('2010003','정대철','K07',null,null,null,'FW','20',null,'1987-10-8','1','183','78');
INSERT INTO player VALUES('2010154','꼬레아','K07',null,null,null,'FW','16',null,'1984-11-8','1','172','70');
INSERT INTO player VALUES('2007214','노상래','K07',null,null,null,'FW','8',null,'1980-12-12','1','175','74');
INSERT INTO player VALUES('2009149','성한수','K07',null,null,null,'FW','40',null,'1986-10-3','2','177','69');
INSERT INTO player VALUES('2009161','세자르','K07',null,null,null,'FW','17',null,'1983-9-12','1','180','78');
INSERT INTO player VALUES('2012032','조병호','K07',null,null,null,'FW','27',null,'1987-1-4','1','177','75');
INSERT INTO player VALUES('2011120','찌코','K07',null,null,null,'FW','27',null,'1985-2-1','1','180','67');
INSERT INTO player VALUES('2010037','하성룡','K07',null,null,null,'FW','35',null,'1992-3-2','1','179','68');
INSERT INTO player VALUES('2012091','홍복표','K07',null,null,null,'FW','19',null,'1989-3-10','1','182','73');
INSERT INTO player VALUES('2000081','김윤환','K05',null,null,null,'DF',null,null,'1971-4-5','1',null,null);
INSERT INTO player VALUES('2000082','정은철','K05',null,null,null,'DF',null,null,'1978-5-5','1',null,null);
INSERT INTO player VALUES('2000083','김경춘','K05',null,null,null,'DF',null,null,'1979-6-4','1',null,null);
INSERT INTO player VALUES('2000084','최동우','K05',null,null,null,'DF',null,null,'1980-3-11','1',null,null);
INSERT INTO player VALUES('2000085','전명구','K05',null,null,null,'DF',null,null,'1979-7-3','1',null,null);
INSERT INTO player VALUES('2000086','박경치','K05',null,null,null,'DF',null,null,'1979-6-1','1',null,null);
INSERT INTO player VALUES('2007106','정이섭','K05','JEONG, ISUB','쾌남','2012','GK','45',null,'1984-6-4','1','185','78');
INSERT INTO player VALUES('2012007','최관민','K05','CHOI, KWANMIN',null,'2012','GK','31',null,'1989-8-5','1','188','85');
INSERT INTO player VALUES('2008179','최동우','K05',null,null,null,'GK','60',null,'1980-3-11','1','187','78');
INSERT INTO player VALUES('2008138','김용발','K05','KIM, YONGBAL',null,'2004','GK','18',null,'1983-9-3','1','183','77');
INSERT INTO player VALUES('2012006','김창민','K05','KIM, CHANGMIN','고릴라','2012','GK','1',null,'1990-10-1','1','191','87');
INSERT INTO player VALUES('2010010','정대건','K05','JEONG, DAEKEON',null,'2010','DF','26',null,'1987-11-4','1','183','78');
INSERT INTO player VALUES('2007159','정봉현','K05','JEONG, BONGHYUN',null,'2005','MF','23',null,'1984-7-7','1','188','74');
INSERT INTO player VALUES('2012009','정창민','K05','JEONG, CHANGMIN','야생마','2012','DF','36',null,'1989-12-9','1','181','68');
INSERT INTO player VALUES('2012005','최동혁','K05','CHOI, DONGHYUK','백호','2012','DF','23',null,'1989-1-4','1','185','78');
INSERT INTO player VALUES('2012012','백인석','K05','BAEK, INSEOK','떡맨','2012','MF','40',null,'1989-8-8','1','179','72');
INSERT INTO player VALUES('2008391','서혁수','K05','SEO, HYUKSU','맷돌','2008','DF','6',null,'1983-1-10','1','178','77');
INSERT INTO player VALUES('2012004','안광호','K05','AN, KWANGHO','왕깡','2012','DF','15',null,'1989-10-1','1','190','78');
INSERT INTO player VALUES('2009076','임종훈','K05','LIM, HONGHUN','꺼시','2009','DF','31',null,'1986-2-6','1','182','74');
INSERT INTO player VALUES('2007148','이진철','K05','LEE, JINCHEUL',null,'2006','DF','4',null,'1981-3-3','1','187','75');
INSERT INTO player VALUES('2009061','한종성','K05','HAN, JONGSUNG',null,'2009','DF','13',null,'1987-4-1','1','177','70');
INSERT INTO player VALUES('2009160','호제리오','K05','Rogerio Prateat','저승사자','2009','DF','3',null,'1983-9-3','1','185','85');
INSERT INTO player VALUES('2007031','황승주','K05',null,null,null,'DF','98',null,'1982-9-5','1','176','68');
INSERT INTO player VALUES('2010023','고관영','K05','KO, KWANYOUNG','까우','2010','MF','32',null,'1991-7-12','1','180','72');
INSERT INTO player VALUES('2007155','정경량','K05','JEONG, KYUNGRYANG',null,'2006','MF','19',null,'1983-5-12','1','173','65');
INSERT INTO player VALUES('2010025','정은익','K05',null,null,null,'MF','35',null,'1991-9-3','1','176','63');
INSERT INTO player VALUES('2012001','레오마르','K05','Leo03 Leiria','레오','2012','MF','5',null,'1981-6-6','1','183','77');
INSERT INTO player VALUES('2008269','명재용','K05','MYUNG, JAEYOENG',null,'2007','MF','7',null,'1983-7-2','2','173','63');
INSERT INTO player VALUES('2007149','변재섭','K05','BYUN, JAESUB','작은탱크','2007','MF','11',null,'1985-8-9','2','170','63');
INSERT INTO player VALUES('2012002','보띠','K05','Raphael JoseBotti Zacarias Sena','Botti','2012','MF','10',null,'1991-9-2','1','174','68');
INSERT INTO player VALUES('2011123','비에라','K05','Vieira',null,'2011','MF','21',null,'1984-10-2','1','176','73');
INSERT INTO player VALUES('2008460','서동원','K05','SEO, DONGWON',null,'2008','MF','22',null,'1985-11-8','1','184','78');
INSERT INTO player VALUES('2010019','안대현','K05','AN, DAEHYUN',null,'2010','MF','25',null,'1987-12-8','1','179','72');
INSERT INTO player VALUES('2010018','양현정','K05','YANG, HYUN06G',null,'2010','MF','14',null,'1987-1-7','1','176','72');
INSERT INTO player VALUES('2010022','유원섭','K05','YOU, WONSUOB','앙마','2010','MF','37',null,'1991-2-5','1','180','77');
INSERT INTO player VALUES('2012008','김수철','K05','KIM, SUCHEUL',null,'2012','MF','34',null,'1989-3-5','1','171','68');
INSERT INTO player VALUES('2012013','임다한','K05','LIM, DAHAN','달마','2012','DF','39',null,'1989-4-7','1','181','67');
INSERT INTO player VALUES('2007087','전경준','K05','JEON, KYOUNGJOON',null,'2001','MF','16',null,'1983-10-9','1','178','68');
INSERT INTO player VALUES('2010021','이영훈','K05','LEE, YOUNGHOON','깐돌이','2010','MF','27',null,'1991-5-3','1','178','71');
INSERT INTO player VALUES('2011028','추운기','K05','CHOO, WOONKI','코알라','2011','MF','17',null,'1988-3-4','1','173','69');
INSERT INTO player VALUES('2008393','하은철','K05','HA, EUNCHEUL',null,'2008','MF','29',null,'1985-6-6','1','176','69');
INSERT INTO player VALUES('2011030','고민기','K05','GO, MINGI',null,'2011','FW','24',null,'1988-1-7','1','178','70');
INSERT INTO player VALUES('2008143','정도훈','K05','JEONG, DOHOON','폭격기','2005','FW','9',null,'1980-7-7','1','182','77');
INSERT INTO player VALUES('2012011','정연건','K05','JEONG, YEONGUN',null,'2012','FW','44',null,'1991-12-3','1','188','77');
INSERT INTO player VALUES('2011002','정현기','K05','JEONG, HYUNKI',null,'2011','FW','28',null,'1992-8-3','1','190','82');
INSERT INTO player VALUES('2011003','남궁도','K05','NAM, KUNGDO',null,'2011','FW','33',null,'1992-4-6','1','186','80');
INSERT INTO player VALUES('2010101','문태혁','K05','MOON, TAEHYUK',null,'2012','FW','41',null,'1993-9-3','1','178','74');
INSERT INTO player VALUES('2008392','최성배','K05','CHOI, SUNGBAE','흑상어','2008','FW','8',null,'1985-10-11','2','181','76');
INSERT INTO player VALUES('2012125','에드밀손','K05','Edmilson','EDY','2012','FW','20',null,'1978-11-5','1','184','79');
INSERT INTO player VALUES('2012003','쿠키','K05',null,null,null,'FW','99',null,'1981-12-4','1','170','76');
INSERT INTO player VALUES('2000087','정은익','K05','JEONG, EUNIK',null,'2010','FW','35',null,'1991-9-3','1','176','65');
INSERT INTO player VALUES('2000091','이순호','K03','LEE, SOONHO',null,null,'DF',null,null,'1972-10-1','1',null,null);
INSERT INTO player VALUES('2000092','유동관','K03','YOU, DONGKWAN',null,null,'DF',null,null,'1973-12-5','1',null,null);
INSERT INTO player VALUES('2000093','박기동','K03','PARK, GIDONG',null,null,'DF',null,null,'1971-1-5','1',null,null);
INSERT INTO player VALUES('2011111','김반코비','K02',null,null,null,'MF','47',null,'1985-8-2','1','185','78');
INSERT INTO player VALUES('2012020','김선우','K02','KIM, SUNWOO',null,null,'FW','33',null,'1988-1-4','1','174','68');
INSERT INTO player VALUES('2011074','김여성','K02','KIM, YEOSUNG',null,null,'MF','36',null,'1993-5-1','1','179','63');
INSERT INTO player VALUES('2007064','김용우','K02','KIM, YONGWOO',null,null,'FW','27',null,'1987-2-7','1','175','70');
INSERT INTO player VALUES('2012019','김종민','K02','KIM, JONGMIN',null,null,'MF','30',null,'1993-1-9','1','174','65');
INSERT INTO player VALUES('2008437','박용훈','K02','PARK, YONGHOON',null,null,'MF','9',null,'1989-11-3','1','175','67');
INSERT INTO player VALUES('2008436','김만근','K02','KIM, MANKEUN',null,null,'FW','34',null,'1987-3-11','1','177','67');
INSERT INTO player VALUES('2007070','김재민','K02','KIM, JAEMIN',null,null,'MF','35',null,'1988-4-5','1','180','71');
INSERT INTO player VALUES('2007043','김현두','K02','KIM, HYUNDOO',null,null,'MF','12',null,'1983-5-11','1','176','68');
INSERT INTO player VALUES('2012017','이성용','K02','LEE, SUNGYONG',null,null,'DF','20',null,'1985-6-12','1','173','70');
INSERT INTO player VALUES('2012018','하태근','K02','HA, TAEKEUN',null,null,'MF','29',null,'1993-1-7','1','182','75');
INSERT INTO player VALUES('2012122','미트로','K02','Mitrovic Slavisa',null,null,'FW','19','보스니아','1987-5-7','1','192','89');
INSERT INTO player VALUES('2007048','최건하','K02','CHOI, KUNHA',null,null,'FW','18',null,'1981-7-7','1','180','75');
INSERT INTO player VALUES('2010168','산드로','K02','Sandro Cardoso Dos Santos',null,null,'FW','13','브라질','1990-8-3','1','182','78');
INSERT INTO player VALUES('2012023','윤화평','K02','YOON, HWAPYUNG',null,null,'FW','42',null,'1993-9-3','1','182','74');
INSERT INTO player VALUES('2012022','김관희','K02','KIM, KWANHEE',null,null,'FW','39',null,'1993-10-6','1','180','70');
INSERT INTO player VALUES('2000051','김광래','K09',null,null,null,'DF',null,null,'1974-11-3','1',null,null);
INSERT INTO player VALUES('2000052','김춘석','K09',null,null,null,'DF',null,null,'1979-3-2','1',null,null);
INSERT INTO player VALUES('2000053','조재흠','K09',null,null,null,'DF',null,null,'1979-12-3','1',null,null);
INSERT INTO player VALUES('2000054','김영진','K09',null,null,null,'DF',null,null,'1973-1-10','1',null,null);
INSERT INTO player VALUES('2000055','정귀화','K09',null,null,null,'DF',null,null,'1980-2-3','1',null,null);
INSERT INTO player VALUES('2012094','최동석','K09',null,null,null,'GK','1',null,'1991-3-5','1','190','89');
INSERT INTO player VALUES('2010125','백민철','K09',null,null,null,'GK','21',null,'1987-3-7','1','185','78');
INSERT INTO player VALUES('2007236','조의손','K09',null,null,null,'GK','44',null,'1970-12-1','1','192','87');
INSERT INTO player VALUES('2011018','우태식','K09',null,null,null,'GK','31',null,'1993-8-1','1','185','75');
INSERT INTO player VALUES('2010117','정동진','K09',null,null,null,'DF','4',null,'1991-4-1','1','182','74');
INSERT INTO player VALUES('2008414','정성일','K09',null,null,null,'DF','19',null,'1984-5-4','1','178','75');
INSERT INTO player VALUES('2012093','정치곤','K09',null,null,null,'DF','17',null,'1993-6-7','1','183','76');
INSERT INTO player VALUES('2012095','최요셉','K09',null,null,null,'DF','5',null,'1990-3-12','1','183','75');
INSERT INTO player VALUES('2010119','최용호','K09',null,null,null,'DF','14',null,'1991-6-3','1','182','69');
INSERT INTO player VALUES('2007068','최정석','K09',null,null,null,'DF','6',null,'1987-7-4','1','182','78');
INSERT INTO player VALUES('2007266','손현준','K09',null,null,null,'DF','45',null,'1982-8-3','1','175','70');
INSERT INTO player VALUES('2011012','안성훈','K09',null,null,null,'MF','2',null,'1992-11-9','1','176','63');
INSERT INTO player VALUES('2008420','김상헌','K09',null,null,null,'DF','25',null,'1985-11-10','2','185','80');
INSERT INTO player VALUES('2012102','박성호','K09',null,null,null,'DF','34',null,'1996-7-4','1','184','71');
INSERT INTO player VALUES('2007225','이윤열','K09',null,null,null,'DF','3',null,'1984-9-4','1','185','79');
INSERT INTO player VALUES('2009048','정도용','K09',null,null,null,'MF','40',null,'1986-10-5','1','168','68');
INSERT INTO player VALUES('2011072','정민성','K09',null,null,null,'MF','24',null,'1992-11-5','1','175','64');
INSERT INTO player VALUES('2011008','조재필','K09',null,null,null,'MF','41',null,'1992-12-5','1','180','70');
INSERT INTO player VALUES('2012096','조현국','K09',null,null,null,'MF','37',null,'1993-1-3','1','172','65');
INSERT INTO player VALUES('2010049','안드레','K09',null,null,null,'MF','18','브라질','1982-2-11','1','172','69');
INSERT INTO player VALUES('2012097','안상현','K09',null,null,null,'MF','33',null,'1996-5-3','1','176','67');
INSERT INTO player VALUES('2012098','우진석','K09',null,null,null,'MF','39',null,'1989-3-8','1','176','70');
INSERT INTO player VALUES('2007133','유상수','K09',null,null,null,'MF','43',null,'1983-4-8','2','175','67');
INSERT INTO player VALUES('2010048','김영표','K09',null,null,null,'MF','12',null,'1987-5-25','1','176','66');
INSERT INTO player VALUES('2012100','김준기','K09',null,null,null,'MF','36',null,'1992-6-4','1','183','74');
INSERT INTO player VALUES('2012101','김지남','K09',null,null,null,'MF','42',null,'1994-7-11','1','183','68');
INSERT INTO player VALUES('2008413','박광민','K09',null,null,null,'FW','23',null,'1986-8-1','1','180','70');
INSERT INTO player VALUES('2009051','박창근','K09',null,null,null,'MF','27',null,'1993-10-8','2','170','63');
INSERT INTO player VALUES('2010118','이원권','K09',null,null,null,'MF','13',null,'1991-8-11','1','173','65');
INSERT INTO player VALUES('2010120','정병채','K09',null,null,null,'FW','15',null,'1991-9-4','1','180','72');
INSERT INTO player VALUES('2009046','정성재','K09',null,null,null,'MF','8',null,'1986-10-9','2','178','72');
INSERT INTO player VALUES('2012119','뚜따','K09',null,null,null,'FW','99','브라질','1984-11-6','1','187','84');
INSERT INTO player VALUES('2012105','마르코','K09',null,null,null,'FW','11','브라질','1986-3-12','1','175','77');
INSERT INTO player VALUES('2011005','최성호','K09',null,null,null,'FW','30',null,'1992-12-7','1','187','73');
INSERT INTO player VALUES('2011108','최윤화','K09',null,null,null,'MF','16',null,'1988-1-6','1','175','67');
INSERT INTO player VALUES('2009047','최정환','K09',null,null,null,'FW','20',null,'1987-2-1','1','178','70');
INSERT INTO player VALUES('2009005','왕정현','K09',null,null,null,'FW','28',null,'1986-3-8','2','181','73');
INSERT INTO player VALUES('2012099','김정수','K09',null,null,null,'FW','7',null,'1990-8-1','1','184','74');
INSERT INTO player VALUES('2012103','김원광','K09',null,null,null,'FW','22',null,'1995-4-8','1','183','68');
INSERT INTO player VALUES('2009044','진순진','K09',null,null,null,'MF','26',null,'1984-1-3','2','180','78');
INSERT INTO player VALUES('2010053','이태욱','K09',null,null,null,'FW','9',null,'1991-5-3','1','173','66');
INSERT INTO player VALUES('2012104','한동원','K09',null,null,null,'FW','32',null,'1996-6-4','1','174','61');
INSERT INTO player VALUES('2011004','한정화','K09',null,null,null,'FW','29',null,'1992-6-10','1','173','63');
INSERT INTO player VALUES('2010164','히카르도','K09',null,null,null,'MF','10','브라질','1986-8-6','1','189','71');
INSERT INTO player VALUES('2011082','권정혁','K01','KWON, 06GHYUK',null,'2011','GK','1',null,'1988-2-8','1','195','80');
INSERT INTO player VALUES('2009070','최창주','K01','CHOI, CHANGZOO',null,'2009','GK','40',null,'1982-7-9','1','187','86');
INSERT INTO player VALUES('2007020','서동명','K01','SEO, DONGMYUNG',null,'2012','GK','21',null,'1984-4-5','1','196','94');
INSERT INTO player VALUES('2008410','양지원','K01','YANG, JIWON',null,'2008','GK','45',null,'1984-8-4','1','181','75');
INSERT INTO player VALUES('2012039','이무림','K01','LEE, MOOLIM',null,'2012','GK','31',null,'1989-9-4','1','185','79');
INSERT INTO player VALUES('2012034','정윤구','K01','JEONG, YOONGOO',null,'2012','DF','20',null,'1989-1-9','1','182','75');
INSERT INTO player VALUES('2011106','끌레베르','K01','Cleber Arild',null,'2011','DF','3','브라질','1979-10-1','1','186','79');
INSERT INTO player VALUES('2011080','최경삼','K01','CHOI, GYUNGSAM',null,'2011','DF','25',null,'1988-6-6','1','188','74');
INSERT INTO player VALUES('2007004','최종욱','K01','CHOI, JONGWOOK',null,'2007','DF','29',null,'1985-11-1','1','185','74');
INSERT INTO player VALUES('2012035','변성환','K01','BYUN, SUNGHWAN',null,'2012','DF','23',null,'1989-11-12','1','176','69');
INSERT INTO player VALUES('2008366','손상호','K01','SON, SANGHO',null,'2007','DF','28',null,'1984-4-5','1','187','78');
INSERT INTO player VALUES('2012044','유재형','K01','YOU, JAEHYUNG',null,'2012','DF','39',null,'1987-12-8','1','180','79');
INSERT INTO player VALUES('2011077','김세권','K01','KIM, SAEKWON',null,'2011','DF','4',null,'1988-1-6','1','184','80');
INSERT INTO player VALUES('2009069','하성용','K01','HA, SUNGYONG',null,'2009','DF','43',null,'1986-5-10','1','179','75');
INSERT INTO player VALUES('2010082','한정일','K01','HAN, JEUNGIL',null,'2010','DF','41',null,'1987-3-3','1','172','65');
INSERT INTO player VALUES('2010054','정건형','K01','JEONG, KUNHYUNG',null,'2010','MF','17',null,'1989-11-9','1','176','70');
INSERT INTO player VALUES('2009058','정도균','K01','JEONG, DOKYUN',null,'2009','MF','6',null,'1987-2-1','1','184','78');
INSERT INTO player VALUES('2011083','최기욱','K01','CHOI, KIWOOK',null,'2011','MF','18',null,'1988-3-12','1','175','68');
INSERT INTO player VALUES('2012028','최진섭','K01','CHOI, JINSUP',null,'2012','MF','2',null,'1987-11-3','1','179','68');
INSERT INTO player VALUES('2011079','서덕규','K01','SEO, DOUKGUY',null,'2011','DF','5',null,'1988-4-10','1','182','72');
INSERT INTO player VALUES('2012130','에디','K01','Edmilson Alves',null,'2012','MF','7','브라질','1986-5-2','1','182','70');
INSERT INTO player VALUES('2009055','김길용','K01','KIM, KILYONG',null,'2009','MF','22',null,'1986-6-3','2','183','78');
INSERT INTO player VALUES('2012036','김윤섭','K01','KIM, YOONSUB',null,'2012','MF','26',null,'1989-7-7','1','184','77');
INSERT INTO player VALUES('2012029','김천수','K01','KIM, CHUNSU',null,'2012','MF','9',null,'1991-9-7','1','174','65');
INSERT INTO player VALUES('2012033','장성욱','K01','01G, SUNGWOOK',null,'2012','MF','19',null,'1989-1-9','1','174','71');
INSERT INTO player VALUES('2007023','장철민','K01','01G, CHULMIN',null,'2007','MF','24',null,'1982-8-5','1','179','76');
INSERT INTO player VALUES('2011084','전광철','K01','JEON, KWANGCHEOL',null,'2011','MF','34',null,'1992-9-7','1','186','74');
INSERT INTO player VALUES('2012045','전재운','K01','JEON, JAEWOON',null,'2012','MF','42',null,'1991-5-6','1','177','67');
INSERT INTO player VALUES('2007008','박정수','K01','PARK, JEONGSOO',null,'2003','MF','8',null,'1979-10-11','1','170','61');
INSERT INTO player VALUES('2012042','박주영','K01','PARK, HUYOUNG',null,'2012','MF','36',null,'1989-3-5','1','172','65');
INSERT INTO player VALUES('2012040','김원희','K01','KIM, WONHEE',null,'2012','MF','32',null,'1993-11-4','1','178','71');
INSERT INTO player VALUES('2012041','곽기훈','K01',null,null,null,'FW','33',null,'1989-5-11','1','177','72');
INSERT INTO player VALUES('2007010','정현석','K01','JEONG, HYUNSEOK',null,'2011','FW','16',null,'1977-5-5','1','178','70');
INSERT INTO player VALUES('2011105','마르코스','K01','03cos Antonio',null,'2011','FW','44','브라질','1987-7-4','1','170','73');
INSERT INTO player VALUES('2010045','최규선','K01','CHOI, GYUSUN',null,'2010','FW','15',null,'1991-12-9','1','182','66');
INSERT INTO player VALUES('2012129','알리송','K01','Alison Barros Moraes',null,null,'FW','14','브라질','1992-1-6','1','171','60');
INSERT INTO player VALUES('2012038','김태유','K01','KIM, TAEYOO',null,'2012','FW','30',null,'1989-1-10','1','175','64');
INSERT INTO player VALUES('2012030','박성훈','K01',null,null,null,'FW','10',null,'1989-4-7','1','187','83');
INSERT INTO player VALUES('2012037','이인석','K01','LEE, INSUK',null,'2012','FW','27',null,'1989-7-8','1','181','74');
INSERT INTO player VALUES('2011104','파울링뇨','K01','03cos Paulo Paulrini',null,'2011','FW','11','브라질','1987-4-3','1','174','75');
INSERT INTO player VALUES('2012031','현영민','K01','HYUN, YOUNGMIN',null,'2012','FW','13',null,'1989-2-12','1','179','73');
INSERT INTO player VALUES('2000061','홍인기','K01','HONG, INKI',null,'2008','DF','35',null,'1989-3-3','1','182','75');
INSERT INTO player VALUES('2007114','정기동','K04',null,null,null,'MF','6',null,'1981-12-1','1','171','66');
INSERT INTO player VALUES('2010005','정기형','K04',null,null,null,'MF','19',null,'1987-10-7','1','173','64');
INSERT INTO player VALUES('2012055','정정현','K04',null,null,null,'MF','32',null,'1989-1-4','1','176','68');
INSERT INTO player VALUES('2007122','정한윤','K04',null,null,null,'MF','14',null,'1984-11-7','1','185','74');
INSERT INTO player VALUES('2007137','남기일','K04',null,null,null,'MF','29',null,'1984-4-8','1','177','69');
INSERT INTO player VALUES('2012131','무스타파','K04',null,null,null,'MF','77',null,'1985-8-1','1','180','73');
INSERT INTO player VALUES('2012056','최정주','K04',null,null,null,'MF','33',null,'1989-5-6','1','177','73');
INSERT INTO player VALUES('2010004','조현호','K04',null,null,null,'MF','22',null,'1987-7-7','1','183','71');
INSERT INTO player VALUES('2007125','윤정춘','K04',null,null,null,'MF','17',null,'1983-6-2','1','173','66');
INSERT INTO player VALUES('2011103','장경호','K04',null,null,null,'MF','39',null,'1993-7-2','1','174','66');
INSERT INTO player VALUES('2008209','이문식','K04',null,null,null,'MF','10',null,'1981-8-10','1','173','66');
INSERT INTO player VALUES('2008457','곽경근','K04','GWAK, JYUNGKEUN','골든맨','2008','FW','9',null,'1982-10-10','1','184','81');
INSERT INTO player VALUES('2012120','다보','K04','Chelck Ou03 Dabo',null,'2012','FW','63',null,null,'1','183','76');
INSERT INTO player VALUES('2007126','최성철','K04','CHOI, SUNGCHUL','코미디언','2007','FW','28',null,'1985-9-3','1','190','78');
INSERT INTO player VALUES('2007153','비탈리','K04','VITALIY',null,'2012','FW','24',null,'1979-4-5','1','183','74');
INSERT INTO player VALUES('2009026','안승인','K04','AN, SEUNGIN','안뽕','2009','FW','13',null,'1983-10-3','1','182','75');
INSERT INTO player VALUES('2011019','윤원철','K04',null,null,null,'FW','8',null,'1989-6-1','1','184','75');
INSERT INTO player VALUES('2009027','김성재','K04','KIM, SUNGJAE','까치,돌쇠','2009','FW','11',null,'1986-11-5','1','178','67');
INSERT INTO player VALUES('2007135','김원식','K04','KIM, WONSHIK','뺀, 밥식이','2006','FW','27',null,'1983-12-5','1','172','64');
INSERT INTO player VALUES('2012057','김종민','K04','KIM, JONGMIN',null,'2012','FW','34',null,'1993-1-8','1','184','77');
INSERT INTO player VALUES('2011020','박필석','K04','PARK, PILSUK','장신','2011','FW','18',null,'1988-1-7','1','190','83');
INSERT INTO player VALUES('2010084','제프유','K04','JEFF JI YOUNG',null,'2011','FW','16','미국','1988-2-10','1','184','76');
INSERT INTO player VALUES('2000026','롤란','K04',null,null,'2010','FW',null,'리투아니아',null,null,'184','81');
INSERT INTO player VALUES('2000027','셀라하틴','K04','Selahattin',null,'2012','FW','11','김탈리아',null,null,'180','75');
INSERT INTO player VALUES('2000031','차경복','K08',null,null,'2008','DF',null,null,'1977-10-1','1',null,null);
INSERT INTO player VALUES('2000032','정학범','K08',null,null,null,null,null,null,null,null,null,null);
INSERT INTO player VALUES('2000033','안익수','K08',null,null,null,null,null,null,null,null,null,null);
INSERT INTO player VALUES('2000034','차상광','K08',null,null,null,null,null,null,null,null,null,null);
INSERT INTO player VALUES('2009045','권찬수','K08','KWON, CHANSOO',null,null,'GK','21',null,'1984-3-5','2','183','77');
INSERT INTO player VALUES('2012107','정경두','K08','JEONG, KYOUNGDOO',null,null,'GK','41',null,null,'1','194','76');
INSERT INTO player VALUES('2007255','정해운','K08','JEONG, HAEWOON',null,null,'GK','1',null,'1983-4-12','2','185','79');
INSERT INTO player VALUES('2009101','양영민','K08','YANG, YOUNGMIN',null,null,'GK','31',null,'1984-5-7','1','190','80');
INSERT INTO player VALUES('2011087','가이모토','K08','KAIMOTO KOJIRO',null,null,'DF','3',null,'1987-6-10','1','182','77');
INSERT INTO player VALUES('2012108','정두영','K08','JEONG, DOYOUNG',null,null,'DF','30',null,'1990-7-10','1','181','75');
INSERT INTO player VALUES('2012118','정명휘','K08','JEONG, MYONGHWI',null,null,'DF','37',null,'1991-8-5','1','185','76');
INSERT INTO player VALUES('2007329','정영철','K08','JEONG, YOUNGCHUL',null,null,'DF','5',null,'1986-7-6','1','183','80');
INSERT INTO player VALUES('2007259','정정재','K08','JEONG, 06GJAE',null,null,'DF','13',null,'1984-8-5','2','184','80');
INSERT INTO player VALUES('2007186','정현수','K08','JEONG, HYUNSOO',null,null,'DF','15',null,'1983-9-3','2','186','80');
INSERT INTO player VALUES('2007089','노태경','K08','NO, TAEKYOUNG',null,null,'DF','25',null,'1982-10-4','1','175','68');
INSERT INTO player VALUES('2009098','문삼진','K08','MOON, SAMJIN',null,null,'DF','2',null,'1983-3-3','1','173','68');
INSERT INTO player VALUES('2012111','민경인','K08','MIN, KYUNGIN',null,null,'DF','12',null,'1989-9-5','1','177','71');
INSERT INTO player VALUES('2011091','최종남','K08','CHOI, JONGNAM',null,null,'DF','34',null,'1986-11-11','1','182','76');
INSERT INTO player VALUES('2007055','최충균','K08','CHOI, CHOONGKYUN',null,null,'DF','20',null,'1983-12-6','1','184','70');
INSERT INTO player VALUES('2010034','배진수','K08','BAE, JINSOO',null,null,'DF','38',null,'1986-1-1','1','178','72');
INSERT INTO player VALUES('2008471','김영진','K08','KIM, YOUNGJIN',null,null,'DF','23',null,'1982-2-3','2','180','75');
INSERT INTO player VALUES('2008399','임규식','K08','LIM, KYUSIK',null,null,'DF','27',null,'1985-9-5','1','182','75');
INSERT INTO player VALUES('2012106','곽치국','K08','KWAK, CHIGOOG',null,null,'MF','32',null,'1989-3-4','1','170','68');
INSERT INTO player VALUES('2009095','정상식','K08','JEONG, SANGSIK',null,null,'MF','4',null,'1986-4-12','1','184','71');
INSERT INTO player VALUES('2011086','정용희','K08','JEONG, YONGHEE',null,null,'MF','18',null,'1988-5-10','1','178','70');
INSERT INTO player VALUES('2012109','노규영','K08',null,null,null,'MF','33',null,'1988-6-4','1','180','83');
INSERT INTO player VALUES('2010126','최강조','K08','CHOI, KANGJO',null,null,'MF','6',null,'1990-7-1','1','165','57');
INSERT INTO player VALUES('2008171','최남열','K08','CHOI, NAMRYUL',null,null,'MF','8',null,'1980-7-5','2','178','70');
INSERT INTO player VALUES('2011088','백영철','K08','BAEK, YOUNGCHUL',null,null,'MF','22',null,'1988-11-11','1','177','71');
INSERT INTO player VALUES('2007242','조태용','K08','CHO, TAEYONG',null,null,'MF','7',null,'1980-11-10','1','174','67');
INSERT INTO player VALUES('2012117','올리베','K08','Alcir de Oliveira fonseca',null,null,'MF','29','브라질','1987-8-11','1','175','73');
INSERT INTO player VALUES('2011128','김리네','K08','Ricardo Irineu',null,null,'MF','26','브라질','1987-12-7','1','172','69');
INSERT INTO player VALUES('2012128','쟈스민','K08','Jasmin Mujidza',null,null,'MF','33','크로아티아','1984-2-3','1','180','78');
INSERT INTO player VALUES('2012114','전재호','K08','CHUN, JAEHO',null,null,'MF','14',null,'1989-8-8','1','168','64');
INSERT INTO player VALUES('2008131','김진호','K08','KIM, JINHO',null,null,'MF','11',null,'1983-2-8','1','174','68');
INSERT INTO player VALUES('2012115','이낙훈','K08','LEE, NAKHOON',null,null,'MF','35',null,'1989-9-12','1','172','62');
INSERT INTO player VALUES('2007100','홍도표','K08','HONG, DOPYO',null,null,'MF','9',null,'1983-10-7','1','173','66');
INSERT INTO player VALUES('2010127','정대의','K08','JEONG, DAEEUI',null,null,'FW','19',null,'1987-11-5','1','174','70');
INSERT INTO player VALUES('2009084','정우재','K08','JEONG, WOOJAE',null,null,'FW','24',null,'1986-12-9','1','173','71');
INSERT INTO player VALUES('2007192','샤샤','K08','Drakulic sasa',null,null,'FW','10',null,'1982-1-8','1','190','84');
INSERT INTO player VALUES('2012112','서관수','K08','SEO, KWANSOO',null,null,'FW','17',null,'1990-2-2','1','179','74');
INSERT INTO player VALUES('2011095','김성운','K08','KIM, SUNGWOON',null,null,'FW','40',null,'1988-3-12','1','173','64');
INSERT INTO player VALUES('2012113','김정운','K08','KIM, 06GWOON',null,null,'FW','28',null,'1993-4-3','1','170','68');
INSERT INTO player VALUES('2011094','장동현','K08','01G, DONGHYUN',null,null,'FW','39',null,'1992-5-3','1','178','67');
INSERT INTO player VALUES('2007250','황연석','K08','HWANG, YOUNSUCK',null,null,'FW','16',null,'1983-6-10','1','192','81');
INSERT INTO player VALUES('2000041','정호','K02','JEONG, HO',null,null,'DF',null,null,'1974-7-11','1',null,null);
INSERT INTO player VALUES('2000042','왕선재','K02','WANG, SUNJAE',null,null,'DF',null,null,'1979-8-3','1',null,null);
INSERT INTO player VALUES('2000043','코샤','K02','03co Antonio Alvarez Ferreira',null,null,'DF',null,'브라질','1970-8-7','1',null,null);
INSERT INTO player VALUES('2000044','윤성효','K02','YOON, SUNGHYO',null,null,'DF',null,null,'1972-9-5','1',null,null);
INSERT INTO player VALUES('2007067','정광수','K02','JEONG, GWANGSOO',null,null,'GK','41',null,'1987-10-3','1','182','79');
INSERT INTO player VALUES('2009004','최호진','K02','CHOI, HOJIN',null,null,'GK','31',null,'1986-10-10','1','190','82');
INSERT INTO player VALUES('2007203','조범철','K02','CHO, BUMCHUL',null,null,'GK','21',null,'1980-11-9','2','185','85');
INSERT INTO player VALUES('2007035','김운재','K02','KIM, WOONJAE',null,null,'GK','1',null,'1983-12-4','1','182','82');
INSERT INTO player VALUES('2008429','정영선','K02','JEONG, YOUNGSUN',null,null,'DF','16',null,'1985-3-4','1','184','81');
INSERT INTO player VALUES('2012021','정유진','K02','JEONG, YOUJIN',null,null,'DF','37',null,'1993-1-6','1','188','76');
INSERT INTO player VALUES('2011073','손승준','K02','SON, SEUNG06',null,null,'DF','32',null,'1992-2-5','1','186','72');
INSERT INTO player VALUES('2007007','조홍기','K02','CHO, HONGGI',null,null,'DF','15',null,'1978-4-5','1','175','66');
INSERT INTO player VALUES('2012027','안동원','K02','AN, DONGWON',null,null,'DF','49',null,'1992-3-9','1','184','78');
INSERT INTO player VALUES('2012024','김강진','K02','KIM, KANGJIN',null,null,'DF','43',null,'1996-4-4','1','181','65');
INSERT INTO player VALUES('2007036','김병근','K02','KIM, BYOUNGKEUN',null,null,'DF','3',null,'1983-5-4','1','175','63');
INSERT INTO player VALUES('2012026','김태권','K02','KIM, TAE-KWON',null,null,'DF','46',null,'1990-6-7','1','180','75');
INSERT INTO player VALUES('2012014','김병국','K02','KIM, BYUNGKOOK',null,null,'DF','2',null,'1991-1-7','1','183','78');
INSERT INTO player VALUES('2011075','김성환','K02','KIM, SUNGHWAN',null,null,'DF','5',null,'1992-9-4','1','183','75');
INSERT INTO player VALUES('2012123','가비','K02','Gabriel Popescu',null,null,'MF','10','루마니아','1983-7-12','1','177','74');
INSERT INTO player VALUES('2010089','강대희','K02',null,null,null,'MF','26',null,'1987-2-2','1','174','65');
INSERT INTO player VALUES('2007051','고종수','K02','KO, JONGSU',null,null,'MF','22',null,'1988-8-10','1','176','70');
INSERT INTO player VALUES('2012015','고창현','K02','KO, CHANGHYUN',null,null,'MF','8',null,'1993-9-9','1','170','64');
INSERT INTO player VALUES('2009089','정기범','K02','JEONG, KIBUM',null,null,'MF','28',null,'1986-10-8','1','173','65');
INSERT INTO player VALUES('2009083','정동현','K02','JEONG, DONGHYUN',null,null,'MF','25',null,'1990-11-8','1','175','72');
INSERT INTO player VALUES('2011071','정두현','K02','JEONG, DOOHYUN',null,null,'MF','4',null,'1992-12-7','1','175','67');
INSERT INTO player VALUES('2012025','정준','K02','JEONG, 06',null,null,'MF','44',null,'1996-9-12','1','170','65');
INSERT INTO player VALUES('2007040','정진우','K02','JEONG, JINWOO',null,null,'DF','7',null,'1985-9-10','1','179','72');
INSERT INTO player VALUES('2007069','데니스','K02','Laktio11 Denis',null,null,'FW','11','러시아','1987-4-9','1','176','71');
INSERT INTO player VALUES('2007274','서정원','K02','SEO, 06GWON',null,null,'FW','14',null,'1980-1-12','1','173','66');
INSERT INTO player VALUES('2012016','손대호','K02','SON, DAEHO',null,null,'DF','17',null,'1991-11-9','1','186','79');
INSERT INTO player VALUES('2011070','오규찬','K02','OH, GUCHAN',null,null,'MF','24',null,'1992-2-8','1','178','71');
INSERT INTO player VALUES('2012135','윤원일','K02',null,null,null,'MF','45',null,'1993-3-3','1','176','70');
INSERT INTO player VALUES('2009131','김동욱','K02','KIM, DONGWOOK',null,null,'MF','40',null,'1986-10-4','1','176','68');
INSERT INTO player VALUES('2010901','장성철','K11',null,null,null,'MF','27',null,'1991-9-3','1','176','75');
INSERT INTO player VALUES('2010902','장윤정','K11',null,null,null,'DF','17',null,'1993-4-3','1','173','63');
INSERT INTO player VALUES('2010903','장서연','K11',null,null,null,'FW','7',null,'1995-5-1','1','180','60');
INSERT INTO player VALUES('2009901','고규억','K12',null,null,null,'DF','29',null,'1994-6-8','1','175','70');
INSERT INTO player VALUES('2009902','장재우','K12',null,null,null,'FW','12',null,'1987-7-2','1','172','63');
INSERT INTO player VALUES('2008901','오재진','K13',null,null,null,'DF','49',null,'1992-8-7','1','173','72');
INSERT INTO player VALUES('2008902','선원길','K13',null,null,null,'GK','46',null,'1996-9-4','1','174','66');
INSERT INTO player VALUES('2008903','안소정','K13',null,null,null,'FW','38',null,'1997-10-10','1','174','63');
INSERT INTO player VALUES('2007901','주시형','K14',null,null,null,'DF','33',null,'1992-11-11','1','170','72');
INSERT INTO player VALUES('2007902','홍종하','K14',null,null,null,'MF','32',null,'1988-11-12','1','169','74');
INSERT INTO player VALUES('2010801','오춘식','K15',null,null,null,'MF','22',null,'1988-8-3','1','168','75');
INSERT INTO player VALUES('2010802','박창우','K15',null,null,null,'DF','13',null,'1989-12-5','1','177','68');
INSERT INTO player VALUES('2010803','박진하','K15',null,null,null,'FW','11',null,'1989-9-1','1','181','62');



# 사원 테이블 만들기

CREATE TABLE DEPT
        (DEPTNO TinyInt,
         DNAME VARCHAR(14),
	      LOC VARCHAR(13),
			CONSTRAINT PK_DEPT PRIMARY KEY (DEPTNO) ) ;
			
desc dept;			
			
CREATE TABLE EMP
        (EMPNO Int ,
	 		ENAME VARCHAR(10),
 	 		JOB   VARCHAR(9),
	 		MGR   SmallInt,
			 HIREDATE DATE,
			 SAL   Decimal(7,2),
			 COMM  DEcimal(7,2),
			 DEPTNO TinyInt,
			 CONSTRAINT PK_EMP PRIMARY KEY(EMPNO),
			 CONSTRAINT FK_DEPTNO FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO)
			 );
			 
			 
# 데이터 입력

--  insert DEPT 4 data
INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

select count(*) from DEPT

--  insert EMP  14 data
INSERT INTO EMP  VALUES (7369,'SMITH','CLERK',    7902, str_to_date('12-17-1980','%m-%d-%Y'),800,NULL,20);
INSERT INTO EMP  VALUES (7499,'ALLEN','SALESMAN', 7698,str_to_date('02-20-1981','%m-%d-%Y'),1600,300, 30);
INSERT INTO EMP  VALUES (7521,'WARD','SALESMAN',  7698,str_to_date('02-22-1981','%m-%d-%Y'),1250,500, 30);
INSERT INTO EMP  VALUES (7566,'JONES','MANAGER',  7839,str_to_date('04-02-1981','%m-%d-%Y'),2975,NULL,20);
INSERT INTO EMP  VALUES (7654,'MARTIN','SALESMAN',7698,str_to_date('09-28-1981','%m-%d-%Y'),1250,1400,30);
INSERT INTO EMP  VALUES (7698,'BLAKE','MANAGER',  7839,str_to_date('05-01-1981','%m-%d-%Y'),2850,NULL,30);
INSERT INTO EMP  VALUES (7782,'CLARK','MANAGER',  7839,str_to_date('06-09-1981','%m-%d-%Y'),2450,NULL,10);
INSERT INTO EMP  VALUES (7788,'SCOTT','ANALYST',  7566,str_to_date('07-13-1987','%m-%d-%Y'),3000,NULL,20);
INSERT INTO EMP  VALUES (7839,'KING','PRESIDENT', NULL,str_to_date('11-17-1981','%m-%d-%Y'),5000,NULL,10);
INSERT INTO EMP  VALUES (7844,'TURNER','SALESMAN',7698,str_to_date('09-08-1981','%m-%d-%Y'),1500,0,   30);
INSERT INTO EMP  VALUES (7876,'ADAMS','CLERK',    7788,str_to_date('07-13-1987','%m-%d-%Y'),1100,NULL,20);
INSERT INTO EMP  VALUES (7900,'JAMES','CLERK',    7698,str_to_date('12-03-1981','%m-%d-%Y'),950,NULL,30);
INSERT INTO EMP  VALUES (7902,'FORD','ANALYST',   7566,str_to_date('12-03-1981','%m-%d-%Y'),3000,NULL,20);
INSERT INTO EMP  VALUES (7934,'MILLER','CLERK',   7782,str_to_date('01-23-1982','%m-%d-%Y'),1300,NULL,10);
