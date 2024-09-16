


---- Exception Handling in SQL Server

SELECT * FROM Dept

use Sept2024Db


CREATE PROCEDURE  usp_insertDeptDetails   
AS
begin 
		INSERT INTO Dept VALUES(70, 'IT','Mumbai')	 
end;


exec usp_insertDeptDetails





ALTER PROCEDURE  usp_insertDeptDetails   
AS
begin
	 BEGIN TRY
		INSERT INTO Dept VALUES(70, 'IT','Mumbai')		
	 END TRY

	 BEGIN CATCH
			DECLARE @ErrorMessage NVARCHAR(4000);
			DECLARE @ErrorSeverity INT;
			DECLARE @ErrorState INT;

	SELECT @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

	
	-- Throwing the exception
	--RAISERROR('INSERT OPERATION FAILED DUE TO ERROR', @ErrorSeverity, @ErrorState );

	-- If required, we can INSERT the error details in another error log table 

		SELECT @ErrorMessage
		
	 END CATCH
end;


DROP PROCEDURE usp_insertDeptDetails

EXEC usp_insertDeptDetails

DELETE from dept where deptno=70




