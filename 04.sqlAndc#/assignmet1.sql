--- Create database 
Create Database  Sept2024Db

-- creating emp table
CREATE TABLE product_table
(
	productid INT PRIMARY KEY, 
	prodname VARCHAR(10),
	prodprice INT,	
	prodquantity INT,	
	prodcategory VARCHAR(10)
)


-- inserting records to emp table
INSERT INTO product_table VALUES(7369,'laptop',10000,20,'electronic');
INSERT INTO product_table VALUES(7499,'phone',1000,12,'electronic');
INSERT INTO product_table VALUES(7521,'cell',700,12,'electronic');
INSERT INTO product_table VALUES(7566,'computer',32,89000,'electronic');
INSERT INTO product_table VALUES(7654,'keyboard',7,280,'electronic');
INSERT INTO product_table VALUES(7698,'mouse',3,200,'electronic');
