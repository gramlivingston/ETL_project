SELECT * FROM Actors;

--TRUNCATE TABLE title CASCADE;

SELECT * FROM Title;

SELECT * FROM Rating;

-- Join tables on county_id
SELECT Actors.Movie_ID, Actors.Actors, Rating.Rating,Title.Movie_Title
FROM Actors
INNER JOIN Rating ON Actors.Movie_ID = Rating.Movie_ID
INNER JOIN Title ON Actors.Movie_ID = Title.Movie_ID;