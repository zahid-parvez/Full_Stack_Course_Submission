									--- 1st solution ---

use ProductDb

/*
a.  Creates a view that selects every product in the "Products" table with a price less than the average price
			Hint : View name should be  "Products  Less Than Average Price"
*/


CREATE VIEW ProductsLessThanAveragePrice
AS 
SELECT * from Products p
where p.UnitPrice <(select avg(UnitPrice) from Products);
/*	
b.   Display the results by using the View	
*/
SELECT * FROM ProductsLessThanAveragePrice;
/*
c.   Rename the View as   "Low Cost Products"		
*/
EXEC sp_rename 'ProductsLessThanAveragePrice','LowCostProducts'
/*
	d.   Drop the view
*/
drop view LowCostProducts;


					--- 2nd solution ---
/*
a.   Read required data from the Products table
*/
CREATE PROCEDURE usp_readData 
@ColName VARCHAR(20),
@ColValue VARCHAR(30)
AS
BEGIN
	declare @sql nvarchar(300);
	set @sql = 'SELECT * FROM Products WHERE ' +  @ColName + '=' + @ColValue
	EXEC sp_executesql @sql, N'@ColValue VARCHAR(30)', @ColValue;;
END;

declare  @ColName1 varchar(20) = 'ProductName';
declare  @ColValue1 varchar(30) = '''Paptop''';
EXEC usp_readData @ColName1, @ColValue1;


/*
b.   Find the total amount of each product :  Consider UnitsOnOrder, UnitPrice
*/
DECLARE cursor_product CURSOR
FOR SELECT ProductName, UnitPrice, Quantity FROM  Products;

OPEN cursor_product;

DECLARE @ProductName VARCHAR(MAX),  @UnitPrice   DECIMAL, @Quantity DECIMAL;   
FETCH NEXT FROM cursor_product INTO  @ProductName, @UnitPrice, @Quantity;
--PRINT @ProductName
--PRINT @UnitPrice
--PRINT @Quantity

	DECLARE @ProductName1 VARCHAR(MAX),  @UnitPrice1   DECIMAL, @Quantity1 DECIMAL;   
    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT @ProductName + ' - ' +  CAST(@UnitPrice * @Quantity as VARCHAR);
        FETCH NEXT FROM cursor_product INTO  @ProductName,  @UnitPrice, @Quantity;
     END;

CLOSE cursor_product;
DEALLOCATE cursor_product;
/*
c.    You need to display product name and total amount in the output
*/
CREATE PROCEDURE display_usp_totalAmount 
AS
BEGIN
	declare @sql nvarchar(300);
	set @sql = 'SELECT ProductName, Quantity*UnitPrice as TotalAmount FROM Products';
	EXEC sp_executesql @sql;
END;

EXEC display_usp_totalAmount;

/*
	d.   Also display grand total at the end. 
*/
DECLARE cursor_grandTotal CURSOR
FOR SELECT ProductName, UnitPrice, Quantity FROM  Products;

OPEN cursor_grandTotal;

DECLARE @ProductName VARCHAR(MAX),  @UnitPrice   DECIMAL, @Quantity DECIMAL;   
FETCH NEXT FROM cursor_grandTotal INTO  @ProductName, @UnitPrice, @Quantity;
--PRINT @ProductName
--PRINT @UnitPrice
--PRINT @Quantity
	DECLARE @grandTotal INT;
	set @grandTotal = 0;
	DECLARE @ProductName1 VARCHAR(MAX),  @UnitPrice1   DECIMAL, @Quantity1 DECIMAL;   
    WHILE @@FETCH_STATUS = 0
    BEGIN
        set @grandTotal = (@UnitPrice * @Quantity) + @grandTotal;
        FETCH NEXT FROM cursor_grandTotal INTO  @ProductName,  @UnitPrice, @Quantity;
		IF @@FETCH_STATUS = -1
    BEGIN
        PRINT 'Current Grand Total: ' + CAST(@grandTotal AS VARCHAR(50));
    END
		END;

CLOSE cursor_grandTotal;
DEALLOCATE cursor_grandTotal;

/*
e.    Display the total amounts with only two decimal points:
			Eg:   128.50,  582.00, etc....
*/

DECLARE cursor_product_decimal CURSOR
FOR SELECT ProductName, UnitPrice, Quantity FROM  Products;

OPEN cursor_product_decimal;

DECLARE @ProductName VARCHAR(MAX),  @UnitPrice   DECIMAL, @Quantity DECIMAL;   
FETCH NEXT FROM cursor_product_decimal INTO  @ProductName, @UnitPrice, @Quantity;
--PRINT @ProductName
PRINT @UnitPrice
--PRINT @Quantity
DECLARE @grandTotal DECIMAL(18, 2);
SET @grandTotal = 0;
	DECLARE @ProductName1 VARCHAR(MAX),  @UnitPrice1   DECIMAL, @Quantity1 DECIMAL;   
    WHILE @@FETCH_STATUS = 0
    BEGIN
		set @grandTotal = (@UnitPrice * @Quantity) + @grandTotal;
		PRINT @grandTotal
        FETCH NEXT FROM cursor_product_decimal INTO  @ProductName,  @UnitPrice, @Quantity;
		IF @@FETCH_STATUS = -1
    BEGIN
        PRINT 'Current Grand Total: ' + CAST(@grandTotal AS VARCHAR(50));
    END
     END;

CLOSE cursor_product_decimal;
DEALLOCATE cursor_product_decimal;