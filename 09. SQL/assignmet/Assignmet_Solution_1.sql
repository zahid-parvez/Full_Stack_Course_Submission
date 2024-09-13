-- a. Create a database :    ShoppingCartDb
CREATE DATABASE ShoppingCartDb

USE ShoppingCartDb

--b.  Create a table :   Users 
--Columns :  UserId , UserName, Password, ContactNumber, City
 		

CREATE TABLE Users
(
	UserId INT PRIMARY KEY,
	UserName VARCHAR(20),
	UserPassword VARCHAR(20),
	ContactNumber VARCHAR(14),
	City VARCHAR(15)
);

/*
c. Create a table :   Products
				Columns and Constraints: 
						ProductId ---  Primary Key,
						Name   --   Not Null, 
						QuantityInStock ----   Not Null, Greater than Zero
						UnitPrice,   ----  Not null, Greater than Zero
						Category    ---  Not null
*/

CREATE TABLE Products
(
	ProductId INT PRIMARY KEY,
	ProductName VARCHAR(20) NOT NULL,
	QuantityInStock INT NOT NULL,
	UnitPrice INT NOT NULL,
	Category VARCHAR(15),
	CONSTRAINT  CHK_QNTITY_STOCK CHECK (QuantityInStock > 0),
	CONSTRAINT  CHK_UNIT_PRICE CHECK (UnitPrice > 0),
);


/*
d.  Create a table :  Cart
				Columns and  Constraints:  
						Id	---		Primary Key,  
						CartId  ----  NOT NULL, 
						ProductId  ---   Foreign Key with Products(ProductId), 
						Quantity   ---    Not Null,  Greater than zero 
*/
CREATE TABLE Cart (
    Id INT PRIMARY KEY IDENTITY(1,1),
    CartId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

/*
Hints :   	
			i.  Insert min. 5 records in each of the above table.
			ii. Try to verify the constraint functionality by inserting invalid data.
	*/


-- Insert records into Users table
INSERT INTO Users (UserId,UserName, UserPassword, ContactNumber, City) VALUES
(10,'JohnDoe', 'password123', '1234567890', 'New York');
INSERT INTO Users (UserId,UserName, UserPassword, ContactNumber, City) VALUES
(20,'JaneSmith', 'password456', '0987654321', 'Los Angeles');
INSERT INTO Users (UserId,UserName, UserPassword, ContactNumber, City) VALUES
(30,'AliceJohnson', 'password789', '5555555555', 'Chicago');
INSERT INTO Users (UserId,UserName, UserPassword, ContactNumber, City) VALUES
(40,'BobBrown', 'password101', '4444444444', 'Houston');
INSERT INTO Users (UserId,UserName, UserPassword, ContactNumber, City) VALUES
(50,'CharlieDavis', 'password202', '3333333333', 'Phoenix');

-- Insert records into Products table
INSERT INTO Products (ProductId,ProductName, QuantityInStock, UnitPrice, Category) VALUES
(100,'Laptop', 10, 999.99, 'Electronics');
INSERT INTO Products (ProductId,ProductName, QuantityInStock, UnitPrice, Category) VALUES
(200,'Smartphone', 20, 699.99, 'Electronics');
INSERT INTO Products (ProductId,ProductName, QuantityInStock, UnitPrice, Category) VALUES
(300,'Tablet', 15, 399.99, 'Electronics');
INSERT INTO Products (ProductId,ProductName, QuantityInStock, UnitPrice, Category) VALUES
(400,'Headphones', 50, 49.99, 'Accessories');
INSERT INTO Products (ProductId,ProductName, QuantityInStock, UnitPrice, Category) VALUES
(500,'Charger', 100, 19.99, 'Accessories');


-- Insert records into Cart table
INSERT INTO Cart (CartId, ProductId, Quantity) VALUES
(1, 100, 2);
INSERT INTO Cart (CartId, ProductId, Quantity) VALUES
(1, 200, 1);
INSERT INTO Cart (CartId, ProductId, Quantity) VALUES
(2, 300, 1);
INSERT INTO Cart (CartId, ProductId, Quantity) VALUES
(2, 400, 3);
INSERT INTO Cart (CartId, ProductId, Quantity) VALUES
(3, 400, 5);


/*
	 i.  On Product Table  
			a.   Display all Products
			b.   Display Products belongs to particular category
			c.   Display out of stock products (means quantity is zero)
			d.   Display the products which price between 1000 to 10000 
			e.   Display the product details based on the ProductId
*/

--1
select * from Products
--2
select * from Products WHERE Category='Electronics';
--3
select * from Products WHERE QuantityInStock = 0;
--4
select * from Products where UnitPrice > 1000 AND UnitPrice < 10000;
--5
select * from Products where ProductId=400;


/*
ii.   On Cart Table:
			a.  Display data based on the given CartId
			b.  Check is there any products added in Cart based on the ProductId
*/

--a
select * from Cart where CartId=2
--b
select count(CartId)as NumProdutsAvailable from Cart where ProductId=200; 

/*
iii.   On Users Table
			a. Display All users 
			b. Display user details based on ContactNumber
			c. Display user details based on UserId
*/

--a
select * from Users;
--b
select * from Users where ContactNumber='1234567890';
--c
select * from Users where UserId=20;
