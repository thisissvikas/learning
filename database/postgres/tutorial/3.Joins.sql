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


-- 