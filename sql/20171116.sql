--patch tracking information
--20171116.sql
--end of tracking information
GO

CREATE DATABASE TEST;
GO

 CREATE TABLE [STUDENT] (
  [ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [NAME] [varchar] (60) NULL,
  [SCHOOL] [varchar] (100) NULL,
  [PROFESSIONAL] [varchar] (200) NULL,
  [TELEPHONE] [varchar] (11) NULL,
  [QQ] [varchar] (11) NULL,
  [WEIXIN] [varchar] (20) NULL,
  [UPDATE_DATE] [datetime] NULL
 )
 GO