CREATE DATABASE Course

USE Course

CREATE TABLE Students(
	Id INT PRIMARY KEY IDENTITY,
	Fullname NVARCHAR(50),
	Email NVARCHAR(50) UNIQUE,
	Point TINYINT CHECK(Point BETWEEN 0 AND 100)
)

INSERT INTO Students VALUES
('Student1 std1', 'Student1@gmail.com', 70),
('Student2 std2', 'Student2@gmail.com', 40),
('Student3 std3', 'Student3@gmail.com', 80)

TRUNCATE TABLE Students

SELECT * FROM Students
WHERE Point > (SELECT AVG(Point) FROM Students)

SELECT Id, SUBSTRING(Fullname, 1, CHARINDEX(' ', Fullname) - 1)
AS Name, Point FROM Students

SELECT SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email) - 1)
AS Domain FROM Students

SELECT * FROM Students