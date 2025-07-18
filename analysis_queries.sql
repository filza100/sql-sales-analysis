-- Total Order Amount by Order
SELECT 
    o.order_id,
    c.name AS customer_name,
    o.order_date,
    SUM(p.unit_price * od.quantity) AS total_order_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY o.order_id, c.name, o.order_date
ORDER BY o.order_id;

-- Top 3 Customers by Total Spend
SELECT 
    c.name AS customer_name,
    SUM(p.unit_price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

-- Daily Sales Summary
SELECT 
    o.order_date,
    SUM(p.unit_price * od.quantity) AS total_sales
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY o.order_date
ORDER BY o.order_date;

-- Most Popular Products (by Quantity Sold)
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;

-- Category-wise Revenue
SELECT 
    p.category,
    SUM(p.unit_price * od.quantity) AS category_revenue
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
