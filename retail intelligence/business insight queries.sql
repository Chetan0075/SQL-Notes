-- SELECT
--     c.name,
--     SUM(od.quantity * p.price) AS revenue
-- FROM customers c
-- JOIN orders o ON c.customer_id=o.customer_id
-- JOIN order_details od ON o.order_id=od.order_id
-- JOIN products p ON od.product_id=p.product_id
-- GROUP BY c.name
-- ORDER BY revenue DESC
-- LIMIT 5;

-- SELECT
--     p.product_name,
--     SUM(od.quantity) AS total_sold
-- FROM products p
-- JOIN order_details od
-- ON p.product_id = od.product_id
-- GROUP BY p.product_name
-- ORDER BY total_sold DESC;

-- SELECT
--     p.category,
--     SUM(od.quantity * p.price) AS revenue
-- FROM products p
-- JOIN order_details od
-- ON p.product_id = od.product_id
-- GROUP BY p.category;

