use retail_intelligence;

-- -- SELECT MAX(price)
-- -- FROM products;

-- -- SELECT *
-- -- FROM products
-- -- WHERE price = (
-- --     SELECT MAX(price)
-- --     FROM products
-- -- );



-- SELECT
--     c.customer_id,
--     SUM(od.quantity * p.price) AS total_spent
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- JOIN order_details od ON o.order_id = od.order_id
-- JOIN products p ON od.product_id = p.product_id
-- GROUP BY c.customer_id;


-- SELECT *
-- FROM customer_spending
-- WHERE total_spent >
-- (
--     SELECT AVG(total_spent)
--     FROM customer_spending
-- );



-- SELECT *
-- FROM customers
-- WHERE customer_id IN
-- (
--     SELECT customer_id
--     FROM orders
-- );



-- SELECT *
-- FROM products
-- WHERE product_id NOT IN
-- (
--     SELECT product_id
--     FROM order_details
-- );


-- SELECT *
-- FROM (
--     SELECT
--         c.customer_id,
--         SUM(od.quantity * p.price) AS total_spent
--     FROM customers c
--     JOIN orders o ON c.customer_id = o.customer_id
--     JOIN order_details od ON o.order_id = od.order_id
--     JOIN products p ON od.product_id = p.product_id
--     GROUP BY c.customer_id
-- ) t
-- WHERE total_spent > 5000;


-- WITH customer_totals AS
-- (
--     SELECT
--         c.customer_id,
--         c.name,
--         SUM(od.quantity * p.price) AS total_spent
--     FROM customers c
--     JOIN orders o ON c.customer_id = o.customer_id
--     JOIN order_details od ON o.order_id = od.order_id
--     JOIN products p ON od.product_id = p.product_id
--     GROUP BY c.customer_id, c.name
-- )

-- SELECT *
-- FROM customer_totals
-- WHERE total_spent > 5000;


-- WITH customer_totals AS
-- (
--     SELECT
--         c.name,
--         SUM(od.quantity * p.price) AS total_spent
--     FROM customers c
--     JOIN orders o ON c.customer_id = o.customer_id
--     JOIN order_details od ON o.order_id = od.order_id
--     JOIN products p ON od.product_id = p.product_id
--     GROUP BY c.name
-- )

-- SELECT *
-- FROM customer_totals
-- WHERE total_spent =
-- (
--     SELECT MAX(total_spent)
--     FROM customer_totals
-- );



-- START TRANSACTION;

-- UPDATE products
-- SET price = price + 100
-- WHERE product_id = 1;

-- UPDATE products
-- SET price = price + 100
-- WHERE product_id = 2;

-- COMMIT;


-- START TRANSACTION;

-- UPDATE products
-- SET price = 99999;

-- ROLLBACK;

