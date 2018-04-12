ALTER TABLE TEACHER MODIFY SCHOOL_ID int null;
ALTER TABLE TEACHER MODIFY PROFESSIONAL_ID int null;

ALTER TABLE STUDENT MODIFY SCHOOL_ID int null;
ALTER TABLE STUDENT MODIFY PROFESSIONAL_ID int null;

update TEACHER set SCHOOL_ID = null where SCHOOL_ID = 0;
update TEACHER set PROFESSIONAL_ID = null where PROFESSIONAL_ID = 0;

update STUDENT set SCHOOL_ID = null where SCHOOL_ID = 0;
update STUDENT set PROFESSIONAL_ID = null where PROFESSIONAL_ID = 0;

update TEACHER set PROFESSIONAL_ID = null where SCHOOL_ID is null;
update STUDENT set PROFESSIONAL_ID = null where SCHOOL_ID is null;