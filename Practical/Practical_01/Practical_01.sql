CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);

SELECT * FROM Customers;

INSERT INTO Customers (customer_name, city, email)
VALUES
('Rahul', 'Hyderabad', 'rahul@gmail.com'),
('Priya', 'Vijayawada', 'priya@gmail.com'),
('Amit', 'Bangalore', 'amit@gmail.com');


CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    category VARCHAR(50)
);


INSERT INTO Products
(product_name, price, category)
VALUES
('Laptop', 55000, 'Electronics'),
('Mobile', 20000, 'Electronics'),
('Headphones', 2000, 'Accessories'),
('Keyboard', 1500, 'Accessories'),
('Monitor', 12000, 'Electronics');

SELECT * FROM Products;



CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10,2)
);


INSERT INTO Orders
(customer_id, order_date, total_amount)
VALUES
(1, '2026-01-10', 57000),
(2, '2026-01-12', 20000),
(3, '2026-02-05', 21500),
(1, '2026-02-10', 12000),
(2, '2026-02-15', 55000);

SELECT * FROM Orders;


BEGIN;

INSERT INTO Orders
(customer_id, order_date, total_amount)
VALUES
(1, CURRENT_DATE, 55000);

COMMIT;


BEGIN;

UPDATE Orders
SET total_amount = 100
WHERE order_id = 1;

ROLLBACK;


SELECT
    SUM(total_amount) AS Total_Revenue
FROM Orders;


