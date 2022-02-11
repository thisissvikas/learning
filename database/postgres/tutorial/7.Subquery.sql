------------
IN OPERATOR:
------------

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


SELECT * FROM categories;


SELECT * FROM products;


select product_name from products 
where category_id in (select category_id 
from categories 
where category_name = 'Smart Phone');

select product_name from products p
where EXISTS (SELECT category_id FROM categories c
where category_id = c.category_id);

-------------
ANY OPERATOR:
-------------

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

CREATE TABLE departments (
	department_id serial PRIMARY KEY,
	department_name VARCHAR (255) NOT NULL
);

CREATE TABLE employees (
	employee_id serial PRIMARY KEY,
	employee_name VARCHAR (255),
	department_id INTEGER
);

INSERT INTO departments (department_name)
VALUES
	('Sales'),
	('Marketing'),
	('HR'),
	('IT'),
	('Production');

INSERT INTO employees (
	employee_name,
	department_id
)
VALUES
	('Bette Nicholson', 1),
	('Christian Gable', 1),
	('Joe Swank', 2),
	('Fred Costner', 3),
	('Sandra Kilmer', 4),
	('Julia Mcqueen', NULL);

SELECT * FROM departments;
SELECT * FROM employees;


select employee_name from employees e  
where e.department_id = any
(select department_id from departments
where department_name = 'HR' or department_name = 'IT');

-------------
ALL OPERATOR:
-------------

drop table if exists payment;
CREATE TABLE payment (
    payment_id serial primary key,
    customer_id int NOT NULL,
    staff_id int NOT NULL,
    rental_id int NOT NULL,
    amount numeric(5,2) NOT NULL,
    payment_date date not null
);

insert into payment 
values
(17503, 341, 2, 1520, 7.99, '2007-02-15'), 
(17504, 341, 1, 1778, 1.99, '2007-02-16'), 
(17505, 341, 1, 1849, 7.99, '2007-02-16'), 
(17506, 341, 2, 2829, 2.99, '2007-02-19'), 
(17507, 341, 2, 3130, 7.99, '2007-02-20'), 
(17508, 341, 1, 3382, 5.99, '2007-02-21'), 
(17509, 342, 2, 2190, 5.99, '2007-02-17'), 
(17510, 342, 1, 2914, 5.99, '2007-02-20'), 
(17511, 342, 1, 3081, 2.99, '2007-02-20'), 
(17512, 343, 2, 1547, 4.99, '2007-02-16');
 
select * from payment;

select amount from payment where amount < all
(select round(avg(amount),2) as average_amt
from payment p 
group by customer_id);


----------------
EXISTS OPERATOR:
----------------

