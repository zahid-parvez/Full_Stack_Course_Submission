--------------------------------------------------------
--  Working with  CONSTRAINTS in SQL SERVER   
----------------------------------------------------------

-- This is Parent Table

CREATE TABLE Dept
(
	Deptno INT NOT NULL,
	Dname VARCHAR(50) NOT NULL,
	Loc VARCHAR(50)
);

ALTER TABLE Dept
ADD CONSTRAINT PK_Dept_Deptno  PRIMARY KEY (Deptno)	


ALTER TABLE Dept
DROP CONSTRAINT PK_Dept_Deptno



INSERT INTO Dept VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO Dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO Dept VALUES (30, 'SALES','CHICAGO');
INSERT INTO Dept VALUES (40,'OPERATIONS','DALLAS');

INSERT INTO Dept VALUES (40,'OPERATIONS','DALLAS');

DELETE FROM Dept WHERE Deptno=20
 

SELECT * FROM Dept

DROP TABLE Dept


-- Child Table 
CREATE TABLE Emps
(
	empno INT NOT NULL,
	ename VARCHAR(50),
	job   VARCHAR(50),
	salary   INT  ,
	deptno INT,
	CONSTRAINT  PK_EMPS_EMPNO  PRIMARY KEY (Empno),
	CONSTRAINT  CHK_EMPS_SALARY  CHECK (salary > 1000),
	CONSTRAINT  FK_EMPS_DEPTS  FOREIGN KEY (deptno)
	REFERENCES Dept(deptno)	
	ON DELETE CASCADE
	ON UPDATE CASCADE
) 


SELECT * FROM Emps

SELECT * FROM Dept
 
 
INSERT INTO Emps VALUES(7369,'SMITH','CLERK',1600, 10);


-- INSERT INTO Emps VALUES(7499,'ALLEN','SALESMAN',800,20);
INSERT INTO Emps VALUES(7499,'ALLEN','SALESMAN',1100,20);

-- INSERT INTO Emps VALUES(7369,'WARD','SALESMAN',1250,30);
INSERT INTO Emps VALUES(7521,'WARD','SALESMAN',1250,30);

-- INSERT INTO Emps VALUES(7566,'JONES','MANAGER',2975,41);
INSERT INTO Emps VALUES(7567,'JONES','MANAGER',2975,40);
INSERT INTO Emps VALUES(8567,'JONES-2','MANAGER',9975,40);
SELECT * FROM Emps

DELETE FROM Emps

DROP TABLE Emps




select a.empno, a.ename, a.salary 
from emps a
join emps b
on a.empno = b.empno
where  b.salary > a.empno  

