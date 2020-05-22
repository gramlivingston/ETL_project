
CREATE TABLE Title (
    Movie_ID Integer Primary Key  NOT NULL,
    Movie_Title VARCHAR (255)  NOT NULL
);

CREATE TABLE Actors (
    Movie_ID Integer References Title(Movie_ID)  NOT NULL,
    Actors VARCHAR (255)   NOT NULL
);

CREATE TABLE Rating (
    Movie_ID Integer References Title(Movie_ID)  NOT NULL,
    Rating Integer   NOT NULL
);

CREATE TABLE Genre (
    Movie_ID Integer References Title(Movie_ID)  NOT NULL,
    Genre VARCHAR (255)   NOT NULL
);