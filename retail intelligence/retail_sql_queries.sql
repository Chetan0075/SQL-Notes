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
