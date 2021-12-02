select * from marks m;

select * from students s 
where s.id in (select student_id from marks m where m.marks > 90 and subject_id in (select id from subjects s2 where s2."name" = 'Maths'));

select s.name, sbj.name, m.marks
from marks m
inner join students s on m.student_id = s.id
inner join subjects sbj on m.subject_id = sbj.id;

select s.name, sbj.name, m.marks
from marks m
inner join students s on m.student_id = s.id
inner join subjects sbj on m.subject_id = sbj.id
where m.marks >= 90 and sbj.name = 'Maths';