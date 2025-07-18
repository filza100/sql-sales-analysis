-- Insert Customers
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Ayesha Khan', 'Karachi'),
(2, 'Bilal Ahmed', 'Lahore'),
(3, 'Sana Malik', 'Islamabad'),
(4, 'Umar Shahid', 'Faisalabad'),
(5, 'Zara Qureshi', 'Multan');

-- Insert Products
INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(1, 'Laptop', 'Electronics', 800.00),
(2, 'T-Shirt', 'Clothing', 20.00),
(3, 'Smartphone', 'Electronics', 600.00),
(4, 'Headphones', 'Accessories', 50.00),
(5, 'Notebook (Stationery)', 'Stationery', 5.00);

-- Insert Orders
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2024-01-05'),
(102, 2, '2024-01-06'),
(103, 1, '2024-01-07'),
(104, 3, '2024-01-08'),
(105, 4, '2024-01-10'),
(106, 2, '2024-01-11'),
(107, 5, '2024-01-13'),
(108, 3, '2024-01-14'),
(109, 1, '2024-01-15'),
(110, 5, '2024-01-17');

-- Insert OrderDetails
INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity) VALUES
(1, 101, 1, 1),
(2, 101, 4, 2),
(3, 102, 2, 3),
(4, 103, 3, 1),
(5, 104, 5, 10),
(6, 105, 1, 1),
(7, 106, 2, 2),
(8, 107, 4, 1),
(9, 108, 2, 4),
(10, 109, 1, 1),
(11, 110, 3, 1),
(12, 110, 5, 5);
