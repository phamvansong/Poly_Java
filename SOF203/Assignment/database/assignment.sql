CREATE DATABASE FPLEDU
GO
USE FPLEDU
GO

IF OBJECT_ID('USERS') IS NULL
CREATE TABLE USERS
(
	USERNAME VARCHAR(50),
	PASSWORD VARCHAR(50),
	ROLE VARCHAR(50),
	CONSTRAINT PK_USERS PRIMARY KEY (USERNAME)
)
GO

IF OBJECT_ID('STUDENTS') IS NULL
CREATE TABLE STUDENTS
(
	ID VARCHAR(10),
	NAME NVARCHAR(50),
	EMAIL VARCHAR(50),
	PHONE VARCHAR(10),
	GENDER BIT,
	ADDRESS NVARCHAR(50),
	IMAGE VARCHAR(50),
	CONSTRAINT PK_STUDENTS PRIMARY KEY (ID)
)
GO

IF OBJECT_ID('GRADE') IS NULL
CREATE TABLE GRADE
(
	ID INT,
	SID VARCHAR(10),
	TIENGANH FLOAT,
	TINHOC FLOAT,
	GDTC FLOAT,
	CONSTRAINT PK_GRADE PRIMARY KEY (ID),
	CONSTRAINT FK_GRADE_STUDENTS FOREIGN KEY (SID) REFERENCES STUDENTS
)
GO

INSERT INTO USERS VALUES
('123', '123', 'ADMIN'),
('111', '111', 'USER')
GO