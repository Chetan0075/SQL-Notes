-- CREATE DATABASE boysdata;
-- DROP DATABASE world

USE boysdata;

-- SELECT * FROM boys;
-- SELECT * FROM addresses;
-- SELECT * FROM admin_users;


-- SET autocommit = 0;
-- COMMIT;
-- ROLLBACK;
 

-- SELECT * FROM boys ORDER BY name ASC;


-- CREATE TABLE boys (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  name VARCHAR(100) NOT NULL,
--  email VARCHAR(100) UNIQUE,
--  gender ENUM('Male', 'Female', 'Other'),
--  age NUMERIC(50),
--  salary INT(100)
-- );


-- ALTER TABLE boys DROP COLUMN gender;
-- ALTER TABLE boys MODIFY COLUMN age INT(50);


-- INSERT INTO boys VALUES
-- (4,'bittuz','bittuz@gmail.com',21,36000),
-- (5,'om','omg@gmail.com',21,0);


-- SELECT * FROM boys WHERE salary > 0 ;
-- SELECT * FROM boys WHERE salary = 0 ;


-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE boys
-- SET age = 22
-- WHERE name = 'bittuz';
-- SET SQL_SAFE_UPDATES = 1;


-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE boys
-- SET name = 'chetan'
-- WHERE name = 'Chetan';


-- UPDATE boys
-- SET name = 'adesh'
-- WHERE name = 'Adesh';
-- SET SQL_SAFE_UPDATES = 1;


-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE boys
-- SET salary = salary + 100
-- WHERE salary <= 0


-- DELETE FROM boys
-- WHERE id = 6;


-- DELETE FROM boys
-- WHERE salary IS NULL;


-- ALTER TABLE boys
-- MODIFY COLUMN age INT(50) NOT NULL;


-- ALTER TABLE boys
-- ADD PRIMARY KEY (id);


-- SELECT COUNT(*) FROM boys;
-- SELECT COUNT(*) FROM boys WHERE gender = 'male';
-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM boys;
-- SELECT SUM(salary) AS total_payroll FROM boys;
-- SELECT AVG(salary) AS avg_salary FROM boys;


-- SELECT age, AVG(salary) AS avg_salary
-- FROM boys
-- GROUP BY age;


-- SELECT name, LENGTH(name) AS name_length FROM boys;
-- SELECT name, LOWER(name) AS lowercase_name FROM boys;
-- SELECT name, UPPER(name) AS uppercase_name FROM boys;
-- SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM boys;
-- SELECT NOW();
-- SELECT name, YEAR(date_of_birth) AS birth_year FROM boys;


-- SELECT salary,
--  ROUND(salary) AS rounded,
--  FLOOR(salary) AS floored,
--  CEIL(salary) AS ceiled
-- FROM boys;


-- SELECT name, age,
--  IF(age = '18', 'Yes', 'No') AS is_female
-- FROM boys;














-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  street VARCHAR(255),
--  city VARCHAR(100),
--  state VARCHAR(100),
--  pincode VARCHAR(10),
--  FOREIGN KEY (user_id) REFERENCES boys(id)
-- );


-- ALTER TABLE addresses
-- DROP FOREIGN KEY fk_user;


-- SELECT * FROM ADDRESSES;


-- ALTER TABLE addresses 
-- ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES boys(id);
-- DROP TABLE addresses;


-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  street VARCHAR(255),
--  city VARCHAR(100),
--  state VARCHAR(100),
--  pincode VARCHAR(10),
--  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES boys(id) ON DELETE CASCADE
-- );



-- SELECT boys.name, addresses.city
-- FROM boys
-- INNER JOIN addresses ON boys.id = addresses.user_id;



-- CREATE TABLE admin_users (
-- id INT PRIMARY KEY,
--  name VARCHAR(100),
--  email VARCHAR(100),
--  gender ENUM('Male', 'Female', 'Other'),
--  date_of_birth DATE,
--  salary INT
-- );

-- INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
-- (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

-- INSERT INTO addresses (id) VALUES
-- (10),
-- (11),
-- (12);


-- SELECT name FROM boys
-- UNION
-- SELECT name FROM admin_users;

-- SELECT name FROM boys
-- UNION ALL
-- SELECT name FROM admin_users;


-- SELECT name, salary FROM boys
-- UNION
-- SELECT name, salary FROM admin_users;


-- SELECT name, 'User' AS role FROM boys
-- UNION
-- SELECT name, 'Admin' AS role FROM admin_users;


-- ALTER TABLE boys
-- ADD COLUMN referred_by_id INT;


-- SELECT
--  a.id,
--  a.name AS name,
--  b.name AS referred_by
-- FROM boys a
-- INNER JOIN boys b ON a.referred_by_id = b.id;


-- CREATE VIEW salary_users AS
-- SELECT id, name, salary
-- FROM boys
-- WHERE salary > 700;
-- SELECT * FROM salary_users;

-- CREATE INDEX idx_email ON boys(email);

-- SHOW INDEXES FROM boys;























































