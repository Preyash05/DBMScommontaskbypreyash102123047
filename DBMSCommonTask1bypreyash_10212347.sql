-- creating database inventoryDB
CREATE DATABASE inventoryDB;

-- now using that database
USE inventoryDB;

-- creating table and adding specified columns
CREATE table products(
  name varchar(50),
  description varchar(250),
  price numeric,
  quantity int,
  category varchar(50)
);

-- inserting data into table
INSERT INTO products VALUES ("phone", "A Phone", 50000, 2, "Electrical");
INSERT INTO products VALUES (" Television","Televeision 2024", 20000,5, "Semiconductor");
INSERT INTO products VALUES ("board game","ludo is  board game", 100, 2, "manual");
INSERT INTO products VALUES("bottle", "drink water", 200, 12, "steel");

-- query to retrieve all the products.
SELECT * FROM products; 

--  using where clause to get a product with a price less that specified
SELECT * FROM products WHERE price<500;

-- using where clause to get a product with quantity more than a specified number
SELECT * FROM products WHERE quantity>=5; 

-- filtering them together using and 
SELECT * FROM products WHERE price<500 AND quantity>=5;

-- using update to update price of facewash 
-- removing safe mode to make the updates
SET SQL_SAFE_UPDATES=0;
UPDATE products
SET price=200
WHERE name="bottle";

-- deleting a product from Products table.
DELETE FROM products
WHERE name="phone";

-- finally viewinng the changes
SELECT * FROM products;

