 -- 1. Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    region VARCHAR(50),
    created_at DATE NOT NULL
);

-- 2. Create Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    sale_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('Completed', 'Pending', 'Cancelled', 'Refunded'))
);

-- Insert Customers
INSERT INTO customers (customer_id, first_name, last_name, email, region, created_at) VALUES
(1, 'Alice', 'Smith', 'alice.smith@email.com', 'North America', '2023-01-15'),
(2, 'Bob', 'Jones', 'bob.jones@email.com', 'Europe', '2023-02-20'),
(3, 'Charlie', 'Brown', 'charlie.b@email.com', 'North America', '2023-03-10'),
(4, 'Diana', 'Prince', 'diana.p@email.com', 'Asia-Pacific', '2023-05-04'),
(5, 'Ethan', 'Hunt', 'ethan.h@email.com', 'Europe', '2023-06-18'),
(6, 'Fiona', 'Gallagher', 'fiona.g@email.com', 'North America', '2023-08-22');

-- Insert Sales
INSERT INTO sales (sale_id, customer_id, sale_date, amount, status) VALUES
(1001, 1, '2024-01-10', 240.00, 'Completed'),
(1002, 2, '2024-01-12', 299.99, 'Completed'),
(1003, 1, '2024-02-05', 489.49, 'Completed'),
(1004, 3, '2024-02-14', 199.00, 'Cancelled'),
(1005, 4, '2024-03-01', 699.50, 'Completed'),
(1006, 2, '2024-03-15', 135.00, 'Pending'),
(1007, 5, '2024-03-20', 299.99, 'Refunded'),
(1008, 1, '2024-04-02', 199.00, 'Completed');