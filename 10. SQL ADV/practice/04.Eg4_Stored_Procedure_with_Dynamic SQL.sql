-- Eg1:  Dynamic SQL : Select Query
declare @sql nvarchar(300)
SELECT @sql='SELECT * FROM Sept2024Db.dbo.Emps'
EXEC sp_executesql @sql;

select * from emps

-- Eg2:  Dynamic SQL  with where condition 
declare @sql nvarchar(300)
declare @tableName nvarchar(50)
declare @colName nvarchar(50)
declare @colValue nvarchar(50)

SELECT @tableName = 'Sept2024Db.dbo.Emps';
SELECT @colName = 'deptno';
SELECT @colValue = '10';

SELECT @sql='SELECT * FROM ' +  @tableName + ' WHERE ' + @colName + '=' + @colValue 
SELECT @sql
EXEC sp_executesql @sql;



--  Eg3:  Stored Procedure with Dynamic SQL
CREATE  PROCEDURE  usp_executeDynamicQuery
	@sql nvarchar(300)
AS
begin	
	EXEC sp_executesql @sql;
end;


exec usp_executeDynamicQuery  'SELECT * FROM Sept2024Db.dbo.Emps'
exec usp_executeDynamicQuery  'SELECT * FROM Sept2024Db.dbo.Dept'