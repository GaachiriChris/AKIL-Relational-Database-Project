-- Database: BBIT

-- DROP DATABASE IF EXISTS "BBIT";

CREATE DATABASE "BBIT"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


	-- 1. List all users and the number of orders they’ve made
SELECT u.user_id, u.username, COUNT(o.order_id) AS total_orders
FROM Users u
LEFT JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.username;

-- 2. List products with low stock (e.g., stock_quantity < 20)
SELECT p.product_name, i.stock_quantity
FROM Products p
JOIN Inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 20;

-- 3. Total sales by category
SELECT c.category_name, SUM(oi.quantity * oi.unit_price) AS total_sales
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY c.category_name;

-- 4. List all orders including product details and total price per order
SELECT o.order_id, u.username, p.product_name, oi.quantity, oi.unit_price,
       (oi.quantity * oi.unit_price) AS item_total
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
ORDER BY o.order_id;

-- 5. Top 3 best-selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- 6. Daily revenue report
SELECT DATE(t.transaction_date) AS transaction_day, SUM(t.amount_paid) AS daily_revenue
FROM Transactions t
GROUP BY transaction_day
ORDER BY transaction_day DESC;
