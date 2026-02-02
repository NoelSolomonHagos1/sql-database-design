--1.
SELECT 
    M.Title AS Movie_Title,
    A.ActorName AS Actor
FROM 
    Movie M
INNER JOIN 
    MovieActor MA ON M.Movie_id = MA.MovieID
INNER JOIN 
    Actor A ON MA.ActorID = A.ActorID;

--2.
SELECT 
    M.Title AS Movie_Title,
    G.Genre AS Genre
FROM 
    Movie M
JOIN 
    movie_genre MG ON M.Movie_id = MG.MovieID
JOIN 
    Genre G ON MG.GenreID = G.GenreID;

--3. 
SELECT 
    M.Title AS Movie_Title,
    M.ReleaseDate AS Release_Date,
    D.DirectorName AS Director
FROM 
    Movie M
JOIN 
    Director D ON M.DirectorID = D.DirectorID
WHERE 
    D.DirectorName = 'Steven Spielberg';

--4.
SELECT 
    m.Title AS Movie_Title,
    r.ReviewText,
    r.Rating,
    r.ReviewDate
FROM 
    Movie m
LEFT JOIN 
    Review r ON m.Movie_id = r.MovieID
ORDER BY 
    m.Title;
--5.
SELECT 
    m.Title,
    r.Rating
FROM 
    Movie m
JOIN 
    Review r ON m.Movie_id = r.MovieID
WHERE 
    r.Rating > 7
ORDER BY 
    r.Rating DESC;


