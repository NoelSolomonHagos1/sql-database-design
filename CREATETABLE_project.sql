CREATE TABLE Director(
    DirectorID varchar(15) NOT NULL PRIMARY KEY,
    DirectorName varchar(20) NOT NULL
);

CREATE TABLE Genre(
    GenreID varchar(15) NOT NULL PRIMARY KEY,
    Genre varchar(15) NOT NULL
);
CREATE TABLE movie_genre (
    MovieID VARCHAR(15) NOT NULL,
    GenreID VARCHAR(15) NOT NULL,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movie(Movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ProductionCompany(
    CompanyID varchar(10) NOT NULL PRIMARY KEY,
    Company varchar(30) NOT NULL
);

CREATE TABLE Movie(
    Movie_id VARCHAR(15) NOT NULL PRIMARY KEY,
    Title varchar(40) NOT NULL,
    ReleaseDate DATE NOT NULL,
    DirectorID varchar(15),
    GenreID varchar(15),
    CompanyID varchar(30),
    FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (CompanyID) REFERENCES ProductionCompany(CompanyID) ON UPDATE CASCADE ON DELETE SET NULL
);


CREATE TABLE Actor(
    ActorID varchar(15) NOT NULL PRIMARY KEY,
    ActorName VARCHAR(50) NOT NULL
);

CREATE TABLE MovieActor(
    MovieID varchar(15) NOT NULL,
    ActorID varchar(15) NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie(Movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Review (
    ReviewID VARCHAR(15) NOT NULL PRIMARY KEY,  
    MovieID VARCHAR(15) NOT NULL,
    ReviewText TEXT NOT NULL DEFAULT 'No review provided', 
    Rating INTEGER CHECK (Rating BETWEEN 1 AND 10),  
    ReviewDate DATE NOT NULL,
    FOREIGN KEY (MovieID) REFERENCES Movie(Movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (MovieID, ReviewDate);

