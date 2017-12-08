--patch tracking information
--20171116.sql
--end of tracking information
--create the KAOYAN db
--create ADMINISTRATOR,SCHOOL,PROFESSIONAL,SCHOOL_PROFESSIONAL,STUDENT,TEACHER

CREATE DATABASE KAOYAN;

CREATE TABLE ADMINISTRATOR (
	ADMIN_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME varchar(20) NULL,
	PASSWORD varchar(30) NULL
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO ADMINISTRATOR (NAME, PASSWORD) VALUES ('abner','AbnerDTF321');
INSERT INTO ADMINISTRATOR (NAME, PASSWORD) VALUES ('junhui','junhui321');
INSERT INTO ADMINISTRATOR (NAME, PASSWORD) VALUES ('fenxiao','fenxiao321');
INSERT INTO ADMINISTRATOR (NAME, PASSWORD) VALUES ('cangli','cangli321');

CREATE TABLE SCHOOL (
	SCHOOL_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME varchar(50) NULL,
	PROVINCE varchar(30) NULL,
	CONSTRAINT un_SCHOOL UNIQUE (NAME)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE PROFESSIONAL (
	PROFESSIONAL_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME varchar(50) NULL,
	UPDATE_DATE datetime NULL,
	CONSTRAINT un_PROFESSIONAL UNIQUE (NAME)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE SCHOOL_PROFESSIONAL (
	SCHOOL_PROFESSIONAL_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	SCHOOL_ID int NOT null,
	PROFESSIONAL_ID int NOT null,
	UPDATE_DATE datetime NULL,
	CONSTRAINT un_SCHOOL_PROFESSIONAL UNIQUE (SCHOOL_ID, PROFESSIONAL_ID)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE STUDENT (
	STUDENT_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME varchar(10) NULL,
	SCHOOL_ID int NOT null,
	PROFESSIONAL_ID int NOT null,
	TELEPHONE varchar(20) NULL,
	QQ varchar(20) NULL,
	WEIXIN varchar(20) NULL,
	REQUIREMENT varchar(2000) NULL,
	GRADE int,
	STATUS varchar(30) NULL,
	UPDATE_DATE datetime NULL,
	CONSTRAINT un_STUDENT UNIQUE (TELEPHONE, QQ, WEIXIN)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE TEACHER (
	TEACHER_ID int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME varchar(10) NULL,
	SCHOOL_ID int NOT null,
	PROFESSIONAL_ID int NOT null,
	TELEPHONE varchar(20) NULL,
	QQ varchar(20) NULL,
	WEIXIN varchar(20) NULL,
	REQUIREMENT varchar(2000) NULL,
	GRADE int,
	UPDATE_DATE datetime NULL,
	CONSTRAINT un_TEACHER UNIQUE (TELEPHONE, QQ, WEIXIN)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;