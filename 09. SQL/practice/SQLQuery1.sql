------------------------------------------------------------
---    Basic Commands in SQL Server
------------------------------------------------------------
CREATE DATABASE Sept2024Db

USE Sept2024Db

CREATE TABLE Sept2024Db.dbo.Dept
(
	Deptno INT PRIMARY KEY,
	Dname VARCHAR(50),
	Loc VARCHAR(50) 
);



/*CREATE TABLE Dept
(
	Deptno INT PRIMARY KEY,
	Dname VARCHAR(50) NOT NULL,
	Loc VARCHAR(50) 
);*/


--DROP TABLE Dept

SELECT * FROM Dept


INSERT INTO Dept VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO Dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO Dept (Deptno,Dname) VALUES (30,'SALES');

-- Throws error as Dname is not null column 
INSERT INTO Dept (Deptno) VALUES (40);	
INSERT INTO Dept (Deptno, Dname) VALUES (40, 'OPERATIONS');	


INSERT INTO Dept VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO Dept VALUES (50,'TESTING','CHICAGO');



-- UPDATE Command
UPDATE Dept   SET Loc='BOSTON'   WHERE Deptno=30
UPDATE Dept   SET Loc='CHICAGO'   WHERE Deptno=40
UPDATE Dept   SET Dname='HR'   WHERE Deptno=40



--DELETE FROM Dept
DELETE FROM Dept WHERE Deptno=20

SELECT * FROM Dept


