USE test_db

CREATE TABLE Persons1 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NULL,
    Age int NOT NULL); 
	/*-- Now We Insert --*/
INSERT INTO Persons1 (ID, LastName, FirstName, Age) 
Values ('0022', 'Will', 'Smith', '55'), 
('3455', 'Jane', 'Wilds', '26'), 
('9946', 'Petre', 'Adrian', '27'), 
( '7898', 'Vaskor', 'Sampson', '28'); 
/*-- Now We Select--*/ 
Select * From dbo.Persons1
CREATE TABLE Ordersone (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int NOT NULL);
);  
/*--- More Practice ---*/
INSERT INTO Ordersone (OrderID, OrderNumber, PersonID) 
VALUES ( '1994', '1111', '2252'),
('1995', '1111', '2254'), 
('1996', '1111', '2256'), 
('1998', '1111', '2258'); 
/*-- Show the table --*/
Select * From dbo.Ordersone
CREATE TABLE STUDENTS (
StudentID int PRIMARY KEY NOT NULL, 
firstName VARCHAR(30) NULL, 
lastName VARCHAR (30) NULL, 
Address VARCHAR (50) NULL); 
/* Insert Practice */
INSERT INTO STUDENTS (StudentID, firstName, lastName, Address) 
VALUES ( '1200', 'Adrian', 'Petre', '55 crescent place'), 
( '1201', 'Shawn', 'Hunt', '762 bowplace SW'),
( '1202', 'Peter', 'Parker', 'New york 722st'), 
( '1203', 'John', 'Jameson', 'Daily Bugle'); 
UPDATE STUDENTS SET firstName = 'John' where StudentID = 1201;
Select * From dbo.STUDENTS 

Create Table grades( 
StudentID Int Null, 
gradeA Int Null, 
gradeB Int Null, 
gradeC Int Null, 
finalexam Int Null);

INSERT INTO grades (StudentID,gradeA,gradeB,gradeC,finalexam) 
VALUES ( '3045', '92', '94', '96', '67'), 
('1304', '56', '65', '72', '45'), 
('1405', '66', '76', '98', '78');
DELETE FROM grades where finalexam= 45 
/*-- DROP TABLE grades;... if I wasn't afraid to delete the whole table--*/  
/*-- TRUNCATE TABLE grades;... If I  wasn't afraid to delete most of the table--*/ 
/*-- Table Alter Below--*/
SELECT * FROM DBO.grades 
ALTER TABLE grades 
ADD Email varchar(30);  
DROP COLUMN gradeB;  -- this isn't working :( --
CREATE TABLE planets (name varchar(50), diameter varchar(50)) INSERT INTO planets (name,diameter) VALUES ('earth', CAST (10000 as varchar(50))) 
Select * From dbo.planets  
Select * From my_view
CREATE VIEW vwCustomer AS SELECT CustomerId, Company Name, Phone FROM Customers 
use test_db
Select * from [apr 7 2021] 
-- NEED TO SEE WHY THIS ISN'T WORKING--
CREATE VIEW volume AS SELECT time, open from high where low = 34.2
-- This Worked --
CREATE PROCEDURE sp_commision @date varchar(30) AS SELECT Current_Price, Change FROM High WHERE volume = @date
-- Didn't Work --
EXEC sp_commision '2021' 
-- WORKS --
SELECT AVG(Low) FROM [apr 7 2021] 
SELECT COUNT(Low) FROM [apr 7 2021]   
-- FUNCTION NAME NOT RECOGNIZED--
SELECT FIRST(Low) FROM [apr 7 2021] 
SELECT LAST(Low) FROM [apr 7 2021]
-- THIS WORKS --
SELECT MIN(Low) FROM [apr 7 2021] 
SELECT MAX(Low) FROM [apr 7 2021] 
SELECT SUM(Low) FROM [apr 7 2021] 
SELECT LEN(Low) FROM [apr 7 2021] 
SELECT ROUND(Low,1) FROM [apr 7 2021] 
-- NONE OF THE LINES WORK IN THIS --
CREATE FUNCTION MyStocks (@volume int)  
RETURN TABLE AS 
RETURN 
SELECT Open, High, Low FROM [apr 7 2021] 
WHERE Volume = @volume; 
Select * from [apr 7 2021] 
-- This Worked --
SELECT change, high, low FROM [apr 7 2021] WHERE volume >=300000
SELECT DISTINCT volume FROM [apr 7 2021] 
USE test_db 
SELECT * FROM [apr 7 2021]  ORDER BY volume ASC 
SELECT Current_Price, high FROM [apr 7 2021] WHERE volume=18015 AND high=7.2 AND time>=15 
SELECT Current_Price, high, Symbol FROM [apr 7 2021] WHERE volume BETWEEN 1000 AND 20000
SELECT Current_Price, high, Symbol FROM [apr 7 2021] WHERE NOT volume BETWEEN 1000 AND 20000 
-- INTERSECT CLAUSES --
SELECT * FROM [apr 7 2021] WHERE volume BETWEEN 1000 AND 20000 INTERSECT SELECT * FROM [apr 7 2021] WHERE volume BETWEEN 2000 and 30000  
--UNION CLAUSE--
SELECT Current_price, high FROM [apr 7 2021] WHERE volume=18015 UNION SELECT Current_price, High FROM [apr 7 2021] WHERE volume BETWEEN 1000 AND 20000

UPDATE [apr 7 2021] 
SET Symbol ="AAPL" WHERE volume BETWEEN 1000 AND 200000