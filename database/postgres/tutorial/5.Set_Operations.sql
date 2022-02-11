DROP TABLE IF EXISTS top_rated_films;
CREATE TABLE top_rated_films(
	title VARCHAR NOT NULL,
	release_year SMALLINT
);

DROP TABLE IF EXISTS most_popular_films;
CREATE TABLE most_popular_films(
	title VARCHAR NOT NULL,
	release_year SMALLINT
);

INSERT INTO 
   top_rated_films(title,release_year)
VALUES
   ('The Shawshank Redemption',1994),
   ('The Godfather',1972),
   ('12 Angry Men',1957);

INSERT INTO 
   most_popular_films(title,release_year)
VALUES
   ('An American Pickle',2020),
   ('The Godfather',1972),
   ('Greyhound',2020);


select * from top_rated_films;
select * from most_popular_films;

select title, release_year 
from most_popular_films
union
select title, release_year 
from top_rated_films;

select title, release_year 
from most_popular_films
union
select title, release_year 
from top_rated_films
order by release_year;

select title, release_year 
from most_popular_films
intersect
select title, release_year 
from top_rated_films;

select title, release_year 
from most_popular_films
except
select title, release_year 
from top_rated_films;
