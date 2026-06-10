use retail_intelligence;

-- select * from customers;
-- select name , city from customers ;
-- select name from customers where city = 'Pune';

-- SELECT * FROM products WHERE price > 1000;
-- SELECT * FROM products ORDER BY price DESC;
-- SELECT * FROM products WHERE category = 'Electronics';
-- SELECT * FROM customers WHERE join_date > '2024-03-01';

-- select * from customers where city = 'mumbai';
-- select * from products where price < 500 ;
-- select * from products order by price asc;

-- select distinct city from customers;
-- select distinct name from customers;
-- SELECT * FROM customers WHERE name LIKE 'c%';
-- SELECT * FROM products WHERE price BETWEEN 500 AND 1000;    
-- SELECT * FROM customers WHERE city IN ('Pune', 'Mumbai');    
-- SELECT * FROM products WHERE category = 'Electronics' AND price > 1000;    
-- SELECT * FROM customers WHERE city = 'Delhi' OR city = 'Chennai';    
    
    
-- select * from products where price < 1000 and price > 200;
-- select name from customers where name like 'S%';
-- select * from customers where city in ('pune','mumbai','delhi')    
-- select * from products where price < 1000 ;    
-- select distinct category from products ;    
    
    
-- select count(*) as total_customers from customers ;    
-- select avg(price) as avg_price from products ;     
-- select min(price) from products ;
-- select max(price) from products ;
 
 
-- select count(order_id) from orders ; 
-- select sum(quantity) from order_details; 
 

-- 	 select customers.customer_id,
-- 			customers.name,
-- 			orders.order_id,
-- 			orders.order_date
-- 	from customers inner join orders on customers.customer_id = orders.customer_id; 	
 
 
 
-- select customers.customer_id,
--        customers.name,
--        orders.order_id,
--        orders.order_date
-- from customers inner join orders
    
    
--  SELECT
--     orders.order_id,
--     products.product_name,
--     order_details.quantity
-- FROM orders INNER JOIN order_details
--     ON orders.order_id = order_details.order_id
-- INNER JOIN products
--     ON order_details.product_id = products.product_id;   
    
    
    
    
    
-- SELECT 
--     c.name,
--     SUM(od.quantity * p.price) AS total_spent
-- FROM customers c
-- JOIN orders o 
--     ON c.customer_id = o.customer_id
-- JOIN order_details od 
--     ON o.order_id = od.order_id
-- JOIN products p 
--     ON od.product_id = p.product_id
-- GROUP BY c.name; /  
    
    
-- SELECT 
--     p.product_name,
--     SUM(od.quantity) AS total_sold
-- FROM products p
-- JOIN order_details od 
--     ON p.product_id = od.product_id
-- GROUP BY p.product_name;
    
    
    
--  SELECT 
--     p.category,
--     SUM(od.quantity * p.price) AS category_revenue
-- FROM products p
-- JOIN order_details od 
--     ON p.product_id = od.product_id
-- GROUP BY p.category;   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
