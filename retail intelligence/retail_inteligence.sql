-- CREATE DATABASE retail_intelligence ;

USE retail_intelligence;

-- Create table customers(
-- customer_id INT PRIMARY KEY,
-- name VARCHAR(100) NOT NULL,
-- city VARCHAR(50) NOT NULL,
-- email VARCHAR (100) UNIQUE,
-- join_date DATE NOT NULL
-- );

-- INSERT INTO customers (customer_id, name, city, email, join_date)
-- VALUES
-- (1, 'chetan rajput', 'ralegaon', 'chetansuraswal07@gmail.com', '2026-07-07'),
-- (2, 'Riya Patil', 'Mumbai', 'riya@gmail.com', '2024-02-15'),
-- (3, 'Siddharth Jain', 'Delhi', 'siddharth@gmail.com', '2024-03-05'),
-- (4, 'Neha Verma', 'Bangalore', 'neha@gmail.com', '2024-01-25'),
-- (5, 'Karan Mehta', 'Hyderabad', 'karan@gmail.com', '2024-04-12'),
-- (6, 'Pooja Singh', 'Pune', 'pooja@gmail.com', '2024-02-28'),
-- (7, 'Rahul Nair', 'Chennai', 'rahul@gmail.com', '2024-03-18'),
-- (8, 'Anjali Deshmukh', 'Mumbai', 'anjali@gmail.com', '2024-05-01'),
-- (9, 'Vikram Rao', 'Delhi', 'vikram@gmail.com', '2024-04-22'),
-- (10, 'Sneha Kulkarni', 'Pune', 'sneha@gmail.com', '2024-05-10');

-- SELECT * FROM customers ;

-- CREATE TABLE Products(
-- product_id int primary key,
-- product_name varchar(100) not null,
-- category varchar(50) not null,
-- price decimal(10, 2) not null
-- )


-- insert into products(product_id, product_name, category, price)
-- values
-- (1, 'wireless mouse', 'electronics', 799.00),
-- (2, 'Mechanical Keyboard', 'Electronics', 2499.00),
-- (3, 'USB-C Cable', 'Electronics', 199.00),
-- (4, 'Office Chair', 'Furniture', 5499.00),
-- (5, 'Study Table', 'Furniture', 3999.00),
-- (6, 'Notebook Set', 'Stationery', 299.00),
-- (7, 'Gel Pen Pack', 'Stationery', 149.00),
-- (8, 'Backpack', 'Accessories', 999.00),
-- (9, 'Water Bottle', 'Accessories', 499.00),
-- (10, 'LED Desk Lamp', 'Electronics', 1299.00);


-- create table orders (
-- order_id int primary key,
-- customer_id int not null,
-- order_date date not null,
-- foreign key(customer_id) references customers(customer_id)
-- );


-- insert into orders(order_id, customer_id, order_date)
-- values
-- (101, 1, '2024-05-01'),
-- (102, 2, '2024-05-02'),
-- (103, 3, '2024-05-03'),
-- (104, 1, '2024-05-05'),
-- (105, 5, '2024-05-06'),
-- (106, 4, '2024-05-08'),
-- (107, 2, '2024-05-09'),
-- (108, 6, '2024-05-10'),
-- (109, 7, '2024-05-12'),
-- (110, 8, '2024-05-14'),
-- (111, 9, '2024-05-15'),
-- (112, 10, '2024-05-16'),
-- (113, 3, '2024-05-18'),
-- (114, 5, '2024-05-20'),
-- (115, 1, '2024-05-22');


-- create table order_details(
-- order_detail_id int primary key,
-- order_id int not null,
-- product_id int not null,
-- quantity int not null,

-- foreign key(order_id) references orders (order_id),
-- foreign key(product_id) references products (product_id)
-- );


-- insert into order_details (order_detail_id, order_id, product_id, quantity)
-- values
-- (1,101,1,2),
-- (2,101,3,1),
-- (3,102,2,1),
-- (4,102,8,1),
-- (5,103,4,1),
-- (6,104,6,5),
-- (7,104,7,3),
-- (8,105,5,1),
-- (9,106,10,2),
-- (10,107,1,1),
-- (11,107,9,2),
-- (12,108,8,1),
-- (13,109,2,1),
-- (14,109,3,2),
-- (15,110,4,1),
-- (16,111,6,4),
-- (17,112,10,1),
-- (18,113,5,1),
-- (19,113,8,2),
-- (20,114,1,3),
-- (21,115,2,1),
-- (22,115,10,1);






select * from customers;
select * from products;
select * from orders;
select * from order_details;
