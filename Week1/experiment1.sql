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