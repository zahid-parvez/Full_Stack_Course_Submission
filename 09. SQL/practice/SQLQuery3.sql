---------------------------------------------------------------------------------
--  Using SQL Server Functions and Customize the Results 
---------------------------------------------------------------------------------

--  Q.   How to find no. of managers are in employee table?

		SELECT COUNT(*) FROM Emps	
		SELECT COUNT(*) FROM Emps  WHERE job = 'Manager';	
		SELECT COUNT(*) FROM Emps  WHERE Deptno=40
	  

--     Q.   How to find no. of employees are working  from the employee table? 
		
		SELECT COUNT(*) FROM Emps		
		SELECT COUNT(*) AS NumberOfEmployees  FROM Emps;
		SELECT COUNT(*) AS EmployeesCount  FROM Emps;
		
		
		
---   create and insert employee data in emps table ----------

 CREATE TABLE Emps
(
	Empno INT PRIMARY KEY, 
	Ename VARCHAR(10),
	Job VARCHAR(9),
	Sal INT,
	Deptno INT
);

INSERT INTO Emps VALUES(7369,'SMITH','CLERK',1500,  20);
INSERT INTO Emps VALUES(7499,'ALLEN','SALESMAN',1600,30);
INSERT INTO Emps VALUES(7521,'WARD','SALESMAN',1250,30);
INSERT INTO Emps VALUES(7566,'JONES','MANAGER',2975,20);
INSERT INTO Emps VALUES(7654,'MARTIN','SALESMAN',1250,30);
INSERT INTO Emps VALUES(7698,'BLAKE','MANAGER',7839,30);
INSERT INTO Emps VALUES(7782,'CLARK','MANAGER',7839,10);
INSERT INTO Emps VALUES(7788,'SCOTT','ANALYST',7566,20);
INSERT INTO Emps VALUES(7839,'KING','PRESIDENT',8900, 10);
INSERT INTO Emps VALUES(7844,'TURNER','SALESMAN',1500,30);
INSERT INTO Emps VALUES(7876,'ADAMS','CLERK',1100, 20);
INSERT INTO Emps VALUES(7900,'JAMES','CLERK',1300,30);
INSERT INTO Emps VALUES(7902,'FORD','ANALYST',3000,NULL);
INSERT INTO Emps VALUES(7934,'MILLER','CLERK',1300,NULL);

SELECT * FROM Emps

DELETE From emps

INSERT INTO Dept VALUES(20,'ADMIN','CHICAGO')
INSERT INTO Dept VALUES(50,'TESTING','CHICAGO')

SELECT * FROM Dept
---------------------------------------------------------------------------------------------

		
		

--  **********   Aggregate Functions  ********************

SELECT * FROM Emps ORDER BY Salary
SELECT * FROM Emps ORDER BY Salary DESC

SELECT AVG(Salary) FROM Emps
SELECT MAX(Salary) FROM Emps
SELECT MIN(Salary) FROM Emps
SELECT SUM(Salary) FROM Emps;
SELECT COUNT(*) FROM Emps;



SELECT SUM(Salary) FROM Emps  WHERE job = 'Manager';	
SELECT SUM(Salary) FROM Emps  WHERE job = 'SALESMAN';
SELECT SUM(Salary) FROM Emps  WHERE job IN ('Manager','SALESMAN');

------------------------------------------
---  Working with  Group By   
------------------------------------------

SELECT Sum(Salary) FROM Emps GROUP BY Job
SELECT Max(Salary) FROM Emps GROUP BY Job
SELECT Min(Salary) FROM Emps GROUP BY Job


SELECT Sum(Salary) FROM Emps GROUP BY Job
SELECT Job, Sum(Salary) As TotalSalaries FROM Emps GROUP BY Job
SELECT Deptno, Sum(Salary) As TotalSalaries FROM Emps GROUP BY Deptno 


---   Group By with Having clause    

SELECT Job, Sum(Salary) As TotalSalaries FROM Emps 
GROUP BY Job
HAVING  Sum(Salary) >  10000


SELECT Deptno, Count(*) As TotalByDept FROM Emps 
GROUP BY Deptno
HAVING  Count(*) >=  5


SELECT Deptno, Sum(Salary) As TotalByDept FROM Emps 
GROUP BY Deptno

---  Grouping with Multiple Columns
SELECT Deptno, Job, Sum(Salary) As TotalSalaries FROM Emps  
GROUP BY Deptno, Job
ORDER BY Deptno 
-------------------------------------------------------------------


---  Multiple Groupings :  Collection of Groups 


SELECT Deptno, Job, Sum(Salary) As TotalSalaries FROM Emps 
GROUP BY Deptno, Job

UNION ALL

SELECT Deptno, NULL, Sum(Salary) As TotalSalaries FROM Emps 
GROUP BY Deptno

UNION ALL 

SELECT NULL, JOB, Sum(Salary) As TotalSalaries FROM Emps 
GROUP BY Job

UNION ALL

SELECT NULL, NULL, Sum(Salary) As TotalSalaries FROM Emps 

------------------------------------------------------------------------------------------
 