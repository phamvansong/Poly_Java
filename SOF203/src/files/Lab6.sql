CREATE DATABASE SOF203LAB6
GO
USE SOF203LAB6
GO
IF OBJECT_ID('BOOK') IS NULL
CREATE TABLE BOOK
(
	ID VARCHAR(10),
	TITLE NVARCHAR(50),
	PRICE VARCHAR(20),
	CONSTRAINT PK_BOOK PRIMARY KEY (ID)
)
GO