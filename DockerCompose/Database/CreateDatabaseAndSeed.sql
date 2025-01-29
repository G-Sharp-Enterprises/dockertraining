create database Albums

GO

use Albums

CREATE TABLE Albums
(
	Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	Title NVARCHAR(MAX) NOT NULL
)

Go

INSERT INTO albums (Title) VALUES 
	('Still Waters Run Deep'),
    ('Dont Stop Now'),
    ('Best of The Beatles'),
    ('Snarky Puppy Live in New York'),
    ('Thriller'),
	('Gino Rosaria Live at the Blue Note'),
    ('The Best of John Williams'),
    ('Uptown Funk'),
    ('The BEst of Van Halen'),
    ('Sleep and Relaxation Music')
