------------------------------------------------------------
---  Working with Views in SQL Server
------------------------------------------------------------
	
	use pubs

	SELECT *   FROM Employees
	
	 -- Create the View
	 CREATE VIEW EmployeeView AS
     SELECT FirstName, LastName, Title As Job  FROM Employees;
	 
	 -- Modify the View
	 ALTER VIEW EmployeeView AS
     SELECT FirstName, LastName, Title As Job, City
     FROM Employees;
	 	 

	 SELECT *   FROM EmployeeView

	 SELECT *   FROM Employees

	 EXEC sp_rename 'EmployeeView', 'EmployeeView2';
		
	SELECT *   FROM EmployeeView2

	DROP VIEW EmployeeView2;

-------------------------------------------------------------


---  Working with Indexes
------------------------------------------------------------------

use Sept2024Db

CREATE INDEX Ename_Index  on Emps (Ename ASC); 
CREATE INDEX Ename_Job_Index  on Emps (Ename ASC, Job ASC);

sp_helpindex 'Emps'

ALTER INDEX Ename_Index on Emps DISABLE		
ALTER INDEX Ename_Index on Emps REBUILD    -- Enable
DROP INDEX  Ename_Index  on emps
EXEC sp_rename 'Emps.Ename_Index','Ename_Index3'		
 


 --- Creating Filtered Indexes
CREATE NONCLUSTERED INDEX deptno_filter_index
ON Emps(deptno)
WHERE deptno = 10





