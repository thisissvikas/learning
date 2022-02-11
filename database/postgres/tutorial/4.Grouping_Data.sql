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

select customer_id from payment group by customer_id ;

select customer_id, sum(amount) from payment group by customer_id;

select customer_id, sum(amount) from payment group by customer_id order by sum(amount);

SELECT
	staff_id,
	COUNT (payment_id)
FROM
	payment
GROUP BY
	staff_id;
