﻿--1) SELECT * FROM Genre;
--2) SELECT * FROM Artist 
--   ORDER BY ArtistName;
--3) SELECT *, a.ArtistName
--	 FROM Song s
--	 LEFT JOIN Artist a on s.ArtistId = a.Id
--4)SELECT ar.ArtistName , g.Label
--	FROM Album al
--	LEFT JOIN Artist ar on al.ArtistId = ar.Id
--	LEFT JOIN Genre g on al.GenreId = g.Id
--	WHERE al.GenreId = 7;
--5)SELECT ar.ArtistName , g.Label
--  FROM Artist ar
--  LEFT JOIN Album al on al.ArtistId = ar.Id
--  LEFT JOIN Genre g on al.GenreId = g.Id
--  WHERE al.GenreId = 4 or al.GenreId = 2
--  GROUP BY ar.ArtistName,g.Label
--6)Select al.Title, s.Title
--	From Album al
--	LEFT JOIN Song s on s.AlbumId = al.Id
--	Where s.AlbumId IS NULL
--7)INSERT INTO Artist (ArtistName, YearEstablished) Values ('Taylor Swift', 2010);
--8)INSERT INTO Album(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) Values ('Speak Now', 2010, 1050, 'Big Machine Records', 29,11);
--9)INSERT INTO Song (Title, SongLength, ReleaseDate,GenreId,ArtistId, AlbumId) VALUES ('Love Story', 280, '01/03/2011',11,29,23);
--10)SELECT s.Title, a.Title, ar.ArtistName
--   FROM Song s
--   LEFT JOIN Album a on s.AlbumId = a.Id
--   LEFT JOIN Artist ar on ar.Id = s.ArtistId
--   WHERE ar.Id = 29 
--11)SELECT a.Title AS 'Album Title', COUNT(s.Id) AS 'Number of songs'
--   FROM Album a 
--   LEFT JOIN Song s ON a.Id = s.AlbumId
--   GROUP BY a.Title
--12)SELECT a.ArtistName , COUNT(s.Id) AS 'Number of songs'
--   FROM Artist a
--   LEFT JOIN Song s ON a.Id = s.ArtistId
--   GROUP BY a.ArtistName
--13)SELECT g.Label AS 'Genre Label', COUNT(s.Id) AS 'Number of songs'
--   FROM Genre g 
--   LEFT JOIN Song s ON g.Id = s.GenreId
--   GROUP BY g.Label
SELECT a.ArtistName, COUNT(DISTINCT Label) AS 'Number of Record Labels'
FROM Artist a
LEFT JOIN Album al ON al.ArtistId = a.Id
GROUP BY a.ArtistName
HAVING COUNT(DISTINCT Label) > 1;
--15) SELECT  Title, AlbumLength AS 'Longest Album Duration'
--    FROM Album 
--    Where AlbumLength = (SELECT MAX(AlbumLength) FROM Album);
--16)SELECT  Title, SongLength AS 'Longest Song Length'
--   FROM Song
--   Where SongLength = (SELECT MAX(SongLength) FROM Song);
--17)SELECT a.Title AS 'Album Title', s.Title AS 'Song Title', S.SongLength AS 'Longest Song Length'
--   FROM Song s
--   LEFT JOIN Album a ON a.Id = s.AlbumId
--   Where SongLength = (SELECT MAX(SongLength) FROM Song);


