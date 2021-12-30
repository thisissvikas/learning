-- JOINS

CREATE TABLE basket_a (
    a INT PRIMARY KEY,
    fruit_a VARCHAR (100) NOT NULL
);

CREATE TABLE basket_b (
    b INT PRIMARY KEY,
    fruit_b VARCHAR (100) NOT NULL
);

INSERT INTO basket_a (a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');
    

   
-- Inner Join

select *
from 
    basket_a
inner join basket_b
    on fruit_a = fruit_b;
   

SELECT
	customer_id,
	first_name,
	last_name,
	amount,
	payment_date
FROM
	customer
INNER JOIN payment USING(customer_id)
ORDER BY payment_date;


SELECT
	c.customer_id,
	c.first_name customer_first_name,
	c.last_name customer_last_name,
	s.first_name staff_first_name,
	s.last_name staff_last_name,
	amount,
	payment_date
FROM
	customer c
INNER JOIN payment p 
    ON p.customer_id = c.customer_id
INNER JOIN staff s 
    ON p.staff_id = s.staff_id
ORDER BY payment_date;
   


-- Left / Left Outer Join
   
select *
from 
    basket_a
left join basket_b
    on fruit_a = fruit_b;
   
select *
from 
    basket_a
left outer join basket_b
    on fruit_a = fruit_b;
   
select *
from 
    basket_a
left outer join basket_b
    on fruit_a = fruit_b
where b is null;


SELECT
	f.film_id,
	title,
	inventory_id
FROM
	film f
LEFT JOIN inventory i USING (film_id)
WHERE i.film_id IS NULL
ORDER BY title;



-- Right / Right Outer Join
   
select *
from 
    basket_a
right join basket_b
    on fruit_a = fruit_b;
   
select *
from 
    basket_a
right outer join basket_b
    on fruit_a = fruit_b;
   
select *
from 
    basket_a
right outer join basket_b
    on fruit_a = fruit_b
where a is null;



-- Full / Full Outer Join

select *
from 
    basket_a
full join basket_b
    on fruit_a = fruit_b;
   
 select *
from 
    basket_a
full outer join basket_b
    on fruit_a = fruit_b;

select *
from 
    basket_a
full outer join basket_b
    on fruit_a = fruit_b
where a is null or b is null;



-- Table Aliases
select ba.a, ba.fruit_a, bb.b, bb.fruit_b 
from 
    basket_a ba
full outer join basket_b bb 
    on ba.fruit_a = bb.fruit_b
where ba.a is null or bb.b is null;


-- Table Aliases in Self Join
SELECT
    e.first_name employee,
    m .first_name manager
FROM
    employee e
INNER JOIN employee m 
    ON m.employee_id = e.manager_id
ORDER BY manager;


-- Self Join

SELECT select_list
FROM table_name t1
INNER JOIN table_name t2 ON join_predicate;

SELECT select_list
FROM table_name t1
LEFT JOIN table_name t2 ON join_predicate;


CREATE TABLE employee (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	manager_id INT,
	FOREIGN KEY (manager_id) 
	REFERENCES employee (employee_id) 
	ON DELETE CASCADE
);
INSERT INTO employee (
	employee_id,
	first_name,
	last_name,
	manager_id
)
VALUES
	(1, 'Windy', 'Hays', NULL),
	(2, 'Ava', 'Christensen', 1),
	(3, 'Hassan', 'Conner', 1),
	(4, 'Anna', 'Reeves', 2),
	(5, 'Sau', 'Norman', 2),
	(6, 'Kelsie', 'Hays', 3),
	(7, 'Tory', 'Goff', 3),
	(8, 'Salley', 'Lester', 3);


SELECT
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m .last_name manager
FROM
    employee e
INNER JOIN employee m ON m .employee_id = e.manager_id
ORDER BY manager;

SELECT
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m .last_name manager
FROM
    employee e
LEFT JOIN employee m ON m .employee_id = e.manager_id
ORDER BY manager;


SELECT
    f1.title,
    f2.title,
    f1.length
FROM
    film f1
INNER JOIN film f2 
    ON f1.film_id <> f2.film_id AND 
       f1.length = f2.length;
      
      
      
-- Cross Join

SELECT select_list
FROM T1
CROSS JOIN T2;

SELECT select_list
FROM T1, T2;

SELECT *
FROM T1
INNER JOIN T2 ON true;


DROP TABLE IF EXISTS T1;
CREATE TABLE T1 (label CHAR(1) PRIMARY KEY);

DROP TABLE IF EXISTS T2;
CREATE TABLE T2 (score INT PRIMARY KEY);

INSERT INTO T1 (label)
VALUES
	('A'),
	('B');

INSERT INTO T2 (score)
VALUES
	(1),
	(2),
	(3);

SELECT *
FROM T1
CROSS JOIN T2;



-- Natural Join

SELECT select_list
FROM T1
NATURAL [INNER, LEFT, RIGHT] JOIN T2;


DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	category_id serial PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	product_id serial PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	category_id INT NOT NULL,
	FOREIGN KEY (category_id) REFERENCES categories (category_id)
);


INSERT INTO categories (category_name)
VALUES
	('Smart Phone'),
	('Laptop'),
	('Tablet');

INSERT INTO products (product_name, category_id)
VALUES
	('iPhone', 1),
	('Samsung Galaxy', 1),
	('HP Elite', 2),
	('Lenovo Thinkpad', 2),
	('iPad', 3),
	('Kindle Fire', 3);


SELECT * FROM products
NATURAL JOIN categories;

SELECT	* FROM products
INNER JOIN categories USING (category_id);
