ALTER TABLE STUDENT_ORDER ADD DEMAND_NAME varchar(200) NULL;
ALTER TABLE TEACHER_ORDER ADD DEMAND_NAME varchar(200) NULL;

delete from STUDENT_ORDER where (demand is null or demand = '') and (REQUIREMENT is null or REQUIREMENT ='');
delete from TEACHER_ORDER where (demand is null or demand = '') and (REQUIREMENT is null or REQUIREMENT ='');