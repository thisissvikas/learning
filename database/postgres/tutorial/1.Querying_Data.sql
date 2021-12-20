-- Querying Data

select * from students s;

select s.id || ' ' || s.name as id_name
from students s;

-- Column Alias

select id as student_id, name as student_name, city as hometown
from students s;

select s.id || ' ' || s.name as "id name"
from students s;


-- Order By

select * 
from marks m
order by 
	m.marks desc,
	subject_id desc;


select * from students s;

select 
	s.id,
	s.name,
	LENGTH(s.name) as name_length
from students s
order by
	name_length asc nulls last;


-- select Distinct
CREATE TABLE distinct_demo (
	id serial NOT NULL PRIMARY KEY,
	bcolor VARCHAR,
	fcolor VARCHAR
);

INSERT INTO distinct_demo (bcolor, fcolor)
VALUES
	('red', 'red'),
	('red', 'red'),
	('red', NULL),
	(NULL, 'red'),
	('red', 'green'),
	('red', 'blue'),
	('green', 'red'),
	('green', 'blue'),
	('green', 'green'),
	('blue', 'red'),
	('blue', 'green'),
	('blue', 'blue');

SELECT
	id,
	bcolor,
	fcolor
FROM
	distinct_demo ;



SELECT
	DISTINCT bcolor
FROM
	distinct_demo
ORDER BY
	bcolor;



SELECT
	DISTINCT bcolor,
	fcolor
FROM
	distinct_demo
ORDER BY
	bcolor,
	fcolor;



SELECT
	DISTINCT ON (bcolor) bcolor,
	fcolor
FROM
	distinct_demo 
ORDER BY
	bcolor,
	fcolor;