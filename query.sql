-- Looking at all tables
SELECT * FROM Title;

SELECT * FROM Actors;

SELECT * FROM Genre;

SELECT * FROM Rating;

-- ACTORS AND RATING --
-- Creating View with Rating table and Actor Table
CREATE VIEW rating_actor as
SELECT
	Actors.Actors,
	Rating.Rating
FROM
	Actors
INNER JOIN
	Rating ON Actors.Movie_ID = Rating.Movie_ID;

-- Checking view
SELECT * FROM rating_actor;

-- Find Average Rating based on actors
CREATE TABLE Average_Rating_Actor as (
SELECT
	rating_actor.actors,
	AVG(rating_actor.rating) as AvgRating
FROM
	rating_actor
GROUP BY rating_actor.Actors
);

SELECT * FROM Average_Rating_Actor;

-- GENRE AND RATING --
-- Creating View with Rating table and Genre Table
CREATE VIEW rating_genre as
SELECT
	Genre.genre,
	Rating.rating
FROM
	Genre
INNER JOIN
	Rating ON Genre.movie_id = Rating.movie_id;

-- Checking view
SELECT * FROM rating_genre;

-- Find Average Rating based on genre
CREATE TABLE Average_Rating_Genre as (
SELECT
	rating_genre.genre,
	AVG(rating_genre.rating) as AvgRating
FROM
	rating_genre
GROUP BY rating_genre.genre
);

SELECT * FROM Average_Rating_Genre;