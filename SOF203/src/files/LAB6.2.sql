CREATE DATABASE SOF203LAB6V2
GO
USE SOF203LAB6V2
GO

IF OBJECT_ID('STANDARDS') IS NULL
CREATE TABLE STANDARDS
(
	STAN NVARCHAR(50),
	FEES INT,
	CONSTRAINT PK_STANDARDS PRIMARY KEY (STAN)
)
GO

IF OBJECT_ID('STUDENT') IS NULL
CREATE TABLE STUDENT
(
	ID INT IDENTITY,
	SNAME NVARCHAR(50),
	SADDRESS NVARCHAR(50),
	PARENTNAME NVARCHAR(50),
	PHONE VARCHAR(10),
	STAN NVARCHAR(50),
	CONSTRAINT PK_STUDENT PRIMARY KEY (ID),
	CONSTRAINT FK_STANDARDS_STUDENT FOREIGN KEY (STAN) REFERENCES STANDARDS
)
GO