CREATE TABLE STUDENT_ORDER (
	STUDENT_ORGER_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	STUDENT_ID int NOT null,
	DEMAND varchar(200) NULL,
	REQUIREMENT varchar(2000) NULL,
	STATUS varchar(30) NULL,
	UPDATE_DATE datetime NULL
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into STUDENT_ORDER (STUDENT_ID, REQUIREMENT, STATUS, UPDATE_DATE) select STUDENT_ID, REQUIREMENT, STATUS, UPDATE_DATE from STUDENT; 

CREATE TABLE TEACHER_ORDER (
	TEACHER_ORGER_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TEACHER_ID int NOT null,
	DEMAND varchar(200) NULL,
	REQUIREMENT varchar(2000) NULL,
	STATUS varchar(30) NULL,
	UPDATE_DATE datetime NULL
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into TEACHER_ORDER (TEACHER_ID, REQUIREMENT, STATUS, UPDATE_DATE) select TEACHER_ID, REQUIREMENT, 'NOT_FINISH' as STATUS, UPDATE_DATE from TEACHER;

CREATE TABLE DEMAND (
	DEMAND_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME varchar(200) NULL,
	SCOPE varchar(30) NULL,
	UPDATE_DATE datetime NULL
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('��Ҫרҵ�θ���','student',localtime());
insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('��Ҫרҵ������+����','student',localtime());
insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('��Ҫרҵ������','student',localtime());
insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('����','student',localtime());

insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('�ṩרҵ�θ���','teacher',localtime());
insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('�ṩרҵ������+����','teacher',localtime());
insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('�ṩרҵ������','teacher',localtime());
insert into DEMAND (NAME, SCOPE, UPDATE_DATE) values ('����','teacher',localtime());


ALTER TABLE STUDENT DROP COLUMN REQUIREMENT;
ALTER TABLE STUDENT DROP COLUMN STATUS;
ALTER TABLE TEACHER DROP COLUMN REQUIREMENT;

insert into CONFIG (NAME, INPUT, DESCRIPTION, UPDATE_DATE) 
values ('STUDENT_EMAIL','true','whether send the student email',localtime());