SELECT datname FROM pg_database;
SELECT current_database();

create TABLE IF NOT EXISTS Student(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO student(name, email)
VALUES ('Vikas', 'krvikas1011@gmail.com');

INSERT INTO student (name, email)
VALUES
    ('Amit', 'Amit.Kumar@target.com'),
    ('Rakesh', 'Rakesh.SS@target.com'),
    ('Sudha', 'SudhaBindu.Das@target.com'),
    ('Himanshu', 'Himanshu.Kumar@target.com'),
    ('Shubhaangi', 'shubhaangi04@gmail.com');
    
select * from student s;

ALTER TABLE student
RENAME TO students;

select * from students s;

ALTER TABLE students
ADD COLUMN city VARCHAR(100);

UPDATE students
SET city = 'Bangalore';

UPDATE students
SET city = 'Delhi'
where name = 'Amit';

UPDATE students
SET city = 'Mumbai'
where name = 'Rakesh';

select * from students s;
