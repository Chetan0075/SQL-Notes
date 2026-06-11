use retail_intelligence;

-- CREATE INDEX idx_orders_customer
-- ON orders(customer_id);

-- CREATE INDEX idx_order_details_order
-- ON order_details(order_id);

-- CREATE INDEX idx_order_details_product
-- ON order_details(product_id);

-- CREATE INDEX idx_orders_date
-- ON orders(order_date);


-- SHOW INDEX FROM orders;
-- SHOW INDEX FROM order_details;



-- DELIMITER //

-- CREATE PROCEDURE customer_history(IN cust_id INT)
-- BEGIN

--     SELECT
--         o.order_id,
--         o.order_date,
--         p.product_name,
--         od.quantity

--     FROM orders o
--     JOIN order_details od
--         ON o.order_id = od.order_id
--     JOIN products p
--         ON od.product_id = p.product_id

--     WHERE o.customer_id = cust_id;

-- END //

-- DELIMITER ;


-- CALL customer_history(1);



            

-- DELIMITER //

-- CREATE PROCEDURE product_info(IN pid INT)
-- BEGIN

--     SELECT
--         product_name,
--         category,
--         price
--     FROM products
--     WHERE product_id = pid;

-- END //

-- DELIMITER ;


-- INSERT INTO customers
-- VALUES
-- (11, '', 'Pune', 'test@gmail.com', '2024-06-01');


-- select * from customers where name = '';
-- delete from customers where name = '';


-- update customers set city = UPPER(city);
-- select city from customers ;


-- select name, city, count(*) from customers
-- group by name, city
-- having count(*) > 1 ;



-- alter table customers
-- add constraint unique_customer
-- unique(name, city);

-- select * from customers ;


-- ROW_NUMBER()
-- 1 2 3 4 5

-- RANK()
-- 1 2 3 3 5

-- DENSE_RANK()
-- 1 2 3 3 4

-- SELECT
--     c.name,
--     SUM(od.quantity * p.price) AS total_spent,
--     ROW_NUMBER() OVER (
--         ORDER BY SUM(od.quantity * p.price) DESC
--     ) AS customer_rank
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- JOIN order_details od ON o.order_id = od.order_id
-- JOIN products p ON od.product_id = p.product_id
-- GROUP BY c.name;



-- INSERT INTO customers
-- VALUES
-- (20,'CRX Test','Latur','crx@test.com','2024-06-01');


-- SELECT
--     c.customer_id,
--     c.name,
--     o.order_id
-- FROM customers c
-- LEFT JOIN orders o
-- ON c.customer_id = o.customer_id;

-- SELECT
--     c.customer_id,
--     c.name,
--     c.city,
--     o.order_id
-- FROM customers c
-- LEFT JOIN orders o
-- ON c.customer_id = o.customer_id;





