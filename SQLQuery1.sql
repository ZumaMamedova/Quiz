CREATE DATABASE Quiz
USE Quiz

--16 question
CREATE TABLE Users(
Id INT PRIMARY KEY,
Firstname NVARCHAR(50),
Lastname NVARCHAR(50),
Email NVARCHAR(50) UNIQUE,
);

--questin22
CREATE TABLE Students(
Id INT PRIMARY KEY,
Name NVARCHAR(50),
Surname NVARCHAR(50),
AveragePoint INT,
GropId INT REFERENCES Groups(Id)
);

CREATE TABLE Groups(
Id INT PRIMARY KEY,
Name NVARCHAR(50),
);

INSERT INTO Students VALUES(1,'Lala','Alizade',7.5,1),
(2,'Cema','Alekberova',8.2,2),
(3,'Anar','Mamedov',7.0,2),
(4,'Gunel','Huseynzade',9.5,1)

INSERT INTO Groups VALUES(1,'Code'),(2,'Academy')


CREATE VIEW DetailedStudents AS 
SELECT TOP 100 PERCENT s.Id, s.Name + ' ' + s.Surname AS Fullname, s.AveragePoint, g.Name AS GroupName
FROM Students s 
JOIN Groups g ON s.GropId = g.Id
ORDER BY s.AveragePoint DESC

SELECT * FROM DetailedStudents;



--question 16
INSERT INTO Users VALUES(1,'Lala','Alizade','lala@gmail.com'),
(2,'Cema','Alekberova','cema@gmail.com'),
(3,'Anar','Mamedov','anar@gmail.com'),
(4,'Gunel','Huseynzade','gunel@gmail.com')

SELECT SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email)) AS Domain
FROM Users

SELECT SUBSTRING(Email, 1, CHARINDEX('@', Email) - 1) AS EmailUsername
FROM Users

SELECT LEN(Email) AS EmailLength FROM Users;



