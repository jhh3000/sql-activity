-- Delete the tables if they already exist
drop table if exists Movie;
drop table if exists Reviewer;
drop table if exists Rating;

-- Create the schema for our tables.
-- TASK A: complete the schema. TWe did the Reviewer.
create table Movie(mID int, title text, year int, director text);
create table Reviewer(mID int, name text);
create table Rating(reviewer_id int, movie_id int, rating int, date date);


-- Movie data.
-- The columns are the id, title, year of release, and director
insert into Movie values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movie values(102, 'Star Wars', 1977, 'George Lucas');
insert into Movie values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movie values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movie values(105, 'Titanic', 1997, 'James Cameron');
insert into Movie values(106, 'Snow White', 1937, null);
insert into Movie values(107, 'Avatar', 2009, 'James Cameron');
insert into Movie values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

-- Reviewer data.
-- The columns are the id and name of the reviewer.
insert into Reviewer values(201, 'Sarah Martinez');
insert into Reviewer values(202, 'Daniel Lewis');
insert into Reviewer values(203, 'Brittany Harris');
insert into Reviewer values(204, 'Mike Anderson');
insert into Reviewer values(205, 'Chris Jackson');
insert into Reviewer values(206, 'Elizabeth Thomas');
insert into Reviewer values(207, 'James Cameron');
insert into Reviewer values(208, 'Ashley White');
insert into Reviewer values(209, 'kind-anteater');
-- TASK B: Add yourself to these data using your course nickname

-- Rating data.
-- The columns are the id of the user, id of the movie, rating, and date of rating.
insert into Rating values(201, 101, 2, '2011-01-22');
insert into Rating values(201, 101, 4, '2011-01-27');
insert into Rating values(202, 106, 4, null);
insert into Rating values(203, 103, 2, '2011-01-20');
insert into Rating values(203, 108, 4, '2011-01-12');
insert into Rating values(203, 108, 2, '2011-01-30');
insert into Rating values(204, 101, 3, '2011-01-09');
insert into Rating values(205, 103, 3, '2011-01-27');
insert into Rating values(205, 104, 2, '2011-01-22');
insert into Rating values(205, 108, 4, null);
insert into Rating values(206, 107, 3, '2011-01-15');
insert into Rating values(206, 106, 5, '2011-01-19');
insert into Rating values(207, 107, 5, '2011-01-20');
insert into Rating values(208, 104, 3, '2011-01-02');
insert into Rating values(209, 103, 3, '2016-01-26');
-- TASK C: Add yourself to these data


-- TASK D: Write a query that shows how many movies there are.
select count(*) from Movie;

-- TASK E: Write a query that shows which three people submitted the most reviews.
select name, count(*)
from Reviewer
inner join Rating
on Reviewer.mID = Rating.reviewer_id
group by name
order by count(*) desc
limit 3;

-- TASK F: Write a query that shows the top 3 rated movies
select title, avg(rating)
from Movie
inner join Rating
on Movie.mID = Rating.movie_id
group by title
order by avg(rating) desc
limit 3;

-- TASK G: Write a query that shows how many ratings each move received
select title, count(*)
from Movie
left outer join Rating
on Movie.mID = Rating.movie_id
group by title
order by count(*) desc;

-- TASK H: Write a query that shows which user gives the lowest average rating
select name, avg(rating)
from Reviewer
inner join Rating
on Reviewer.mID = Rating.reviewer_id
group by name
order by avg(rating) asc
limit 1;
