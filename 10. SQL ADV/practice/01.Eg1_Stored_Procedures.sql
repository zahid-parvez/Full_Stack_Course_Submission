	
--  Example1 
use Sept2024Db

CREATE PROCEDURE  uspGetEmps
AS
BEGIN
	SELECT * FROM Emps;

END;


-- Execute the procedure
EXEC uspGetEmps

----------------------------------------------------------

 -- Example2 :  Input and Output Parameters
 CREATE  PROCEDURE  usp_getEmpsCountByDeptno
   @param_deptno int ,
   @param_empCount  int  OUTPUT
AS
begin	
	SELECT @param_empCount = count(*) FROM Emps   WHERE Deptno=@param_deptno
end;

 
declare  @dno int = 20;
declare  @empCount int;
EXEC usp_getEmpsCountByDeptno @dno, @empCount output
SELECT @empCount As [Employees Count]