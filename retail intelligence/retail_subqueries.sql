use retail_intelligence;

-- SELECT MAX(price)
-- FROM products;

-- SELECT *
-- FROM products
-- WHERE price = (
--     SELECT MAX(price)
--     FROM products
-- );



SELECT
    c.customer_id,
    SUM(od.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_id;


SELECT *
FROM customer_spending
WHERE total_spent >
(
    SELECT AVG(total_spent)
    FROM customer_spending
);














