-- SQL COMMANDS TO CREATE TABLES
-- Create Product table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_name VARCHAR2(20) NOT NULL,
    Price NUMBER CONSTRAINT positive_price CHECK (Price > 0)
);

-- Create Customer table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_name VARCHAR2(20) NOT NULL,
    Customer_tel NUMBER
);

-- Create Orders table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    OrderDate DATE DEFAULT SYSDATE,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- SQL COMMANDS TO ADD COLUMNS
-- Add Category column to Product table
ALTER TABLE Product ADD (Category VARCHAR2(20));

-- Add OrderDate column to Orders table
ALTER TABLE Orders ADD (OrderDate DATE DEFAULT SYSDATE);

