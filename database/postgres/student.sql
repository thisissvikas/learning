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




create TABLE IF NOT EXISTS Subjects(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO Subjects (name)
VALUES
    ('Maths'),
    ('Science'),
    ('English'),
    ('Hindi'),
    ('CS');
   
select * from subjects sbj;







create TABLE IF NOT EXISTS Marks(
    student_id SERIAL REFERENCES students(id) on delete cascade,
    subject_id SERIAL REFERENCES subjects(id) on delete cascade,
    marks INT,
    primary key(student_id, subject_id)
);

drop table Marks;

create TABLE IF NOT EXISTS Marks(
    student_id INT REFERENCES students(id) on delete cascade,
    subject_id INT REFERENCES subjects(id) on delete cascade,
    marks INT,
    primary key(student_id, subject_id)
);


INSERT INTO Marks (student_id, subject_id, marks)
VALUES
    (1, 1, 100),
    (1, 2, 90),
    (1, 3, 80),
    (1, 4, 90),
    (1, 5, 95),
    (2, 1, 70),
    (2, 2, 80),
    (2, 3, 90),
    (2, 4, 90),
    (2, 5, 90),
    (3, 1, 50),
    (3, 2, 45),
    (3, 3, 60),
    (3, 4, 55),
    (3, 5, 33),
    (4, 1, 90),
    (4, 2, 45),
    (4, 3, 85),
    (4, 4, 67),
    (4, 5, 37),
    (5, 1, 99),
    (5, 2, 76),
    (5, 3, 34),
    (5, 4, 56),
    (5, 5, 78),
    (6, 1, 100),
    (6, 2, 100),
    (6, 3, 92),
    (6, 4, 95),
    (6, 5, 100);
 
select * from marks m;




