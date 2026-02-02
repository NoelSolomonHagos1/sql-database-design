INSERT INTO Genre (GenreID, Genre) VALUES
('G1', 'Thriller'),
('G2', 'Romance'),
('G3', 'Comedy'),
('G4', 'Fantasy'),
('G5', 'SciFi'),
('G6', 'Drama');

INSERT INTO Movie (Movie_id, Title, ReleaseDate, DirectorID, CompanyID) VALUES
('M1', 'Jurassic Park', '1993-06-11', 'D1', 'C1'),
('M2', 'The Shining', '1980-05-23', 'D2', 'C2'),
('M3', 'The Wolf of Wall Street', '2013-12-25', 'D3', 'C3'),
('M4', 'Avatar', '2009-12-18', 'D4', 'C4'),
('M5', 'Transformers', '2007-07-03', 'D5', 'C5'),
('M6', 'The Lord of the Rings: The Fellowship of the Ring', '2001-12-19', 'D6', 'C1');


INSERT INTO movie_genre (MovieID, GenreID) VALUES
('M1', 'G1'), 
('M2', 'G1'),  
('M3', 'G3'),  
('M4', 'G4'),  
('M5', 'G1'),  
('M6', 'G4'); 

INSERT INTO Director (DirectorID, DirectorName) VALUES
('D1', 'Steven Spielberg'),
('D2', 'Stanley Kubrick'),
('D3', 'Martin Scorsese'),
('D4', 'James Cameron'),
('D5', 'Michael Bay'),
('D6', 'Peter Jackson');

INSERT INTO ProductionCompany (CompanyID, Company) VALUES 
('C1', 'Universal Pictures'),
('C2', 'Warner Bros.'),
('C3', 'Paramount Pictures'),
('C4', 'Sony Pictures'),
('C5', 'Walt Disney Studios');

INSERT INTO Actor (ActorID, ActorName) VALUES
('A1', 'Ian Malcolm, Alan Grant, Ellie Sattler'),
('A2', 'Jack Nicholson, Shelley Duvall, Danny Lloyd'),
('A3', 'Leonardo DiCaprio, Jonah Hill'),
('A4', 'Zoë Saldaña, Sam Worthington'),
('A5', 'Shia LaBeouf, Megan Fox'),
('A6', 'Elijah Wood, Ian McKellen, Viggo Mortensen, Liv Tyler');

INSERT INTO MovieActor (MovieID, ActorID) VALUES
('M1', 'A1'),  
('M2', 'A2'),  
('M3', 'A3'),  
('M4', 'A4'),  
('M5', 'A5'),  
('M6', 'A6'); 

INSERT INTO Review (ReviewID, MovieID, ReviewText, Rating, ReviewDate) VALUES
('R1', 'M1', 'I highly recommend Jurassic Park!', 8, '1993-06-13'),
('R2', 'M2', 'This is an experience, masterfully shot and some of the most intense and engaging performances!', 8, '1980-05-23'),
('R3', 'M3', 'The Wolf of Wall Street is one of my all time favorites !!', 9, '2013-12-25'),
('R4', 'M4', 'This was an epic movie and I recommend it to everyone!!:)', 7, '2009-12-18'),
('R5', 'M5', ' You get what you pay for', 10, '2007-07-03'),
('R6', 'M6', 'An absolutely incredible film!', 9, '2001-12-19');

