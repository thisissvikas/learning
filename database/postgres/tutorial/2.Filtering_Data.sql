-- Filtering Data


-- Where Clause
select * from students s;

select * 
from students s
where 
	name = 'Vikas' and 
	city <> 'Delhi';


select * 
from students s
where 
	name = 'Vikas' or 
	city <> 'Bangalore';


select * 
from students s
where 
	city IN ('Mumbai', 'Delhi');


select * 
from students s
where 
	email LIKE '%gmail.com';

select * 
from students s
where 
	id between 1 and 3;



-- Limit
select * from students s;


select *
from students s 
order by id
limit 3;


select *
from students s 
order by id
limit 3 offset 2;


select *
from students s 
order by id desc 
limit 3 offset 2;



-- Fetch
select *
from students s 
order by id desc 
fetch first row only;


select *
from students s 
order by id desc 
fetch first 5 row only;


select *
from students s 
order by id desc 
offset 2 rows 
fetch first 3 row only;



-- IN Operator
select * from students s;
select * from marks m;
select * from subjects s;


select * 
from students s
where 
	s.id IN (select distinct m.student_id from marks m where m.marks > 95)
order by s.id;


select * 
from students s
where 
	s.id not in (1, 2);



-- Between Operator

select * 
from students s
where 
	s.id >= 1 and s.id <= 4;


select * 
from students s
where 
	s.id between 1 and 4;


select * 
from students s
where 
	s.id not between 1 and 4;



-- Like Operator

select * 
from students s
where 
	s.name LIKE 'Vikas';


select * 
from students s
where 
	s.name LIKE 'Vik%';


select * 
from students s
where 
	s.name LIKE 'Vik__' or s.name like 'Shu__aan_i';


select * 
from students s
where 
	s.name LIKE '_ik%';


select * 
from students s
where 
	s.name not LIKE 'Vik%';



-- ILike Operator

select * 
from students s
where 
	s.name ilike 'VIK%';

select * 
from students s
where 
	s.name not ilike 'VIK%';



-- Is Null Operator
 -- NULL is not equal to NULL so NULL = NULL returns false

CREATE TABLE contacts(
    id SERIAL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    PRIMARY KEY (id)
);


INSERT INTO contacts(first_name, last_name, email, phone)
VALUES ('John','Doe','john.doe@example.com',NULL),
    ('Lily','Bush','lily.bush@example.com','(408-234-2764)');
   
   
select *
FROM
    contacts
WHERE
    phone = NULL;
   

select *
FROM
    contacts
WHERE
    phone is null;

   
select *
FROM
    contacts
WHERE
    phone is not null;