--2.1 Write a Query to display the results from the above two tables: CartId,  ProductName, Quantity, UnitPrice
--Inner join
SELECT 
    Cart.CartId,
    Products.ProductName AS ProductName,
    Cart.Quantity,
    Products.UnitPrice
FROM 
    Cart
INNER JOIN 
    Products ON Cart.ProductId = Products.ProductId;

--Left outer join

SELECT 
    Cart.CartId,
    Products.ProductName AS ProductName,
    Cart.Quantity,
    Products.UnitPrice
FROM 
    Cart
LEFT JOIN 
    Products ON Cart.ProductId = Products.ProductId;

--right outer join

SELECT 
    Cart.CartId,
    Products.ProductName AS ProductName,
    Cart.Quantity,
    Products.UnitPrice
FROM 
    Cart
RIGHT JOIN 
    Products ON Cart.ProductId = Products.ProductId;

--full join

SELECT 
    Cart.CartId,
    Products.ProductName AS ProductName,
    Cart.Quantity,
    Products.UnitPrice
FROM 
    Cart
FULL OUTER JOIN 
    Products ON Cart.ProductId = Products.ProductId;


/*
--2.2 Write the sql queries for the following requirements  by using Group By concept:

	Hint :   -->   Create a table Called "Student"  table with the following columns:
							StudentId,  StudentName,  CourseName,  City Name, ContactNumber
					-->   Insert some 10 rows in the above table. 
*/

CREATE TABLE Students (
	StudentId INT PRIMARY KEY,
	StudentName VARCHAR(15),
	CourseName VARCHAR(20),
	CityName VARCHAR(20),
	ContactNumber VARCHAR(20),
);

INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(1, 'Alice', 'Angular', 'Hyderabad', '1234567890');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(2, 'Bob', 'Physics', 'Los Angeles', '0987654321');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(3, 'Charlie', 'Angular', 'Hyderabad', '5555555555');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(4, 'David', 'Biology', 'Houston', '4444444444');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(5, 'Eve', 'Computer Science', 'Hyderabad', '3333333333');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(6, 'Frank', 'Angular', 'Philadelphia', '2222222222');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(7, 'Grace', 'History', 'San Antonio', '1111111111');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(8, 'Hank', 'Angular', 'San Diego', '6666666666');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(9, 'Ivy', 'Angular', 'Hyderabad', '7777777777');
INSERT INTO Students (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(10, 'Jack', 'Angular', 'San Jose', '8888888888');

--a.Find out how many Students are joined for "Angular"  Course
select * from Students where CourseName='Angular';
--b.Find out how many Students are joined from  "Hyderabad"  City
Select count(*) as NumberOfStudentsFromHyd from Students where CityName='Hyderabad';
--c.Display No. of Students are join from each  City based 
Select CityName,COUNT(*) as NumOfStudents from Students GROUP BY CityName;
--d.Display No. of Students are join from each  Course  based 
Select CourseName,COUNT(*) as NumOfStudents from Students GROUP BY CourseName;
--e.Display the counts  by grouping based on  city, course 
Select CourseName,CityName,COUNT(*) as NumOfStudents from Students GROUP BY CityName,CourseName;


--2.3 Prepare the sql queries for the following requirements (use subqueries):
			
--a.   Display the products if any items exists in the cart table
select * from Cart where ProductId IN(Select ProductId from Products where ProductName='Laptop');
--b.   Display the cart items whose product price greater than 5000
select * from Cart where ProductId IN(Select ProductId from Products where UnitPrice>5000);