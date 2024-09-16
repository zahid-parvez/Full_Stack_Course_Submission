

--- Working with Cursors in sql server

use pubs

DECLARE cursor_product CURSOR
FOR SELECT ProductName, UnitPrice FROM  Products;


OPEN cursor_product;

DECLARE @ProductName VARCHAR(MAX),  @UnitPrice   DECIMAL;   
FETCH NEXT FROM cursor_product INTO  @ProductName, @UnitPrice;
PRINT @ProductName
PRINT @UnitPrice

	DECLARE @ProductName VARCHAR(MAX),  @UnitPrice   DECIMAL;   
    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT @ProductName + ' - ' +  CAST(@UnitPrice AS varchar);
        FETCH NEXT FROM cursor_product INTO  @ProductName,  @UnitPrice;
     END;

CLOSE cursor_product;
DEALLOCATE cursor_product;

-----------------------------------------------------------------------


--- Creating Stored Procedure with cursor

use pubs
CREATE PROCEDURE uspGetProdctNameWithPrice 
AS
Begin

-- Step1
DECLARE cursor_product CURSOR
FOR SELECT ProductName, UnitPrice FROM  Products;


DECLARE @ProductName VARCHAR(MAX),  @UnitPrice   DECIMAL;
	   
-- Step2
OPEN cursor_product;


-- Step3
FETCH NEXT FROM cursor_product INTO @ProductName, @UnitPrice;

-- Step4
WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT @ProductName + ' - ' +  CAST(@UnitPrice AS varchar);
        FETCH NEXT FROM cursor_product INTO @ProductName, @UnitPrice;
    END;


--  Step5
CLOSE cursor_product;

DEALLOCATE cursor_product;
End;




Exec uspGetProdctNameWithPrice


SELECT * FROM Products
SELECT ProductName, UnitPrice FROM Products