select * from students s;

select s.id || ' ' || s.name as id_name
from students s;

select id as student_id, name as student_name, city as hometown
from students s;

select s.id || ' ' || s.name as "id name"
from students s;


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