
DROP  TABLE IF EXISTS NATURALPERSON cascade ;
DROP TABLE IF EXISTS APPLICATION cascade ;
DROP TABLE IF EXISTS CREDITINFO cascade ;
DROP TABLE IF EXISTS CREDITTYPE cascade ;
DROP TABLE IF EXISTS EMPLOYEETYPE cascade ;
DROP TABLE IF EXISTS EMPLOYEE cascade ;


CREATE TABLE CREDITTYPE (
  ID         INTEGER NOT NULL,
  CREDITTYPE CHAR(100),
  primary key (id)

);
CREATE TABLE EMPLOYEETYPE (
  ID         INTEGER NOT NULL,
  CREDITTYPE CHAR(100),
  primary key (id)

);
CREATE TABLE CREDITINFO (
  ID           INTEGER NOT NULL,
  RATE         FLOAT,
  TIME        INTEGER,
  CREDITTYPEID INTEGER,
  foreign key (CREDITTYPEID) references credittype (id),
  primary key (id)
);

CREATE TABLE NATURALPERSON (
  ID         INTEGER NOT NULL,
  LASTNAME   CHAR(255),
  FIRSTNAME  CHAR(255),
  MIDDLENAME CHAR(255),
  PRIMARY KEY(ID)
);

CREATE TABLE EMPLOYEE (
  ID             INTEGER NOT NULL,
  LASTNAME       CHAR(100),
  FIRSTNAME      CHAR(100),
  MIDDLENAME     CHAR(100),
  QUANTITYAPP    INTEGER,
  EMPLOYEETYPEID INTEGER,
  foreign key (EMPLOYEETYPEID) references EMPLOYEETYPE(id),
  primary key (id)
);

CREATE TABLE APPLICATION (
  ID               INTEGER NOT NULL,
  NATURALPERSON_ID INTEGER NOT NULL,
  REG_DATE         TIMESTAMP,
  CREDITINFOID     INTEGER,
  EMPLOYEETYPEID INTEGER,
  foreign key (CREDITINFOID) references CREDITINFO (id),
  foreign key (EMPLOYEETYPEID) references EMPLOYEETYPE(id),
  foreign key (NATURALPERSON_ID) references NATURALPERSON (id),
  primary key (id)
);

1
SET timezone = 'America/Los_Angeles';



INSERT INTO EMPLOYEETYPE values (1, 'Manager');
INSERT INTO EMPLOYEETYPE values (2, 'Finansist');

INSERT INTO CreditType values (1, 'Потребительский кредит');
INSERT INTO CreditType values (2, 'Срочный кредит');
INSERT INTO CreditType values (3, 'Кредит на неотложные нужды');

INSERT INTO CreditInfo values (1, 7.0, 620, 3);
INSERT INTO CreditInfo values (2, 7.2, 867, 1);
INSERT INTO CreditInfo values (3, 14.5, 285, 3);
INSERT INTO CreditInfo values (4, 10.4, 427, 2);
INSERT INTO CreditInfo values (5, 0.7, 169, 1);
INSERT INTO CreditInfo values (6, 7.6, 482, 1);
INSERT INTO CreditInfo values (7, 10.5, 545, 1);
INSERT INTO CreditInfo values (8, 2.7, 560, 3);
INSERT INTO CreditInfo values (9, 12.4, 145, 3);

INSERT INTO NATURALPERSON values (1, 'Sergeev', 'Zhenya', 'Viktorovich');
INSERT INTO NATURALPERSON values (2, 'Sidorov', 'Sergey', 'Evgenievich');
INSERT INTO NATURALPERSON values (3, 'Ivanov', 'Vitya', 'Viktorovich');
INSERT INTO NATURALPERSON values (4, 'Ivanov', 'Sergey', 'Viktorovich');
INSERT INTO NATURALPERSON values (5, 'Petrov', 'Misha', 'Evgenievich');
INSERT INTO NATURALPERSON values (6, 'Ivanov', 'Sergey', 'Evgenievich');
INSERT INTO NATURALPERSON values (7, 'Sergeev', 'Sergey', 'Evgenievich');
INSERT INTO NATURALPERSON values (8, 'Sergeev', 'Sergey', 'Viktorovich');
INSERT INTO NATURALPERSON values (9, 'Petrov', 'Zhenya', 'Pafnutievich');
INSERT INTO NATURALPERSON values (10, 'Ivanov', 'Sergey', 'Pafnutievich');
INSERT INTO NATURALPERSON values (11, 'Ivanov', 'Vitya', 'Viktorovich');
INSERT INTO NATURALPERSON values (12, 'Sergeev', 'Sergey', 'Pafnutievich');


INSERT INTO Employee values (1, 'Ivanov', 'Vitya', 'Viktorovich', 3, 2);
INSERT INTO Employee values (2, 'Sidorov', 'Zhenya', 'Viktorovich', 1, 2);
INSERT INTO Employee values (3, 'Petrov', 'Sergey', 'Michailovich', 6, 1);
INSERT INTO Employee values (4, 'Ivanov', 'Vitya', 'Pafnutievich', 1, 1);
INSERT INTO Employee values (5, 'Sergeev', 'Sergey', 'Pafnutievich', 10, 2);

INSERT INTO Application values (1, 1, '2012-09-13 04:51:33', 7, 2);
INSERT INTO Application values (2, 2, '2017-07-01 19:48:55', 9, 1);
INSERT INTO Application values (3, 3, '2017-06-09 04:56:47', 4, 1);
INSERT INTO Application values (4, 4, '2013-02-26 13:57:05', 1, 1);
INSERT INTO Application values (5, 5, '2013-07-11 02:12:36', 6, 1);
INSERT INTO Application values (6, 6, '2015-10-29 04:13:13', 2, 2);
INSERT INTO Application values (7, 7, '2018-03-24 09:16:49', 5, 2);
INSERT INTO Application values (8, 8, '2017-04-19 18:57:00', 1, 1);
INSERT INTO Application values (9, 9, '2016-11-18 09:26:35', 8, 1);
