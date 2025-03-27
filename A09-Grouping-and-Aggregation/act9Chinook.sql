-- Your code for part 1 here:
SELECT Album.Title AS "Metallica Albums", COUNT(*) AS "Number of Tracks", ROUND (MIN (Milliseconds/ 60000.0), 2) AS "Min", ROUND (MAX (Milliseconds/ 60000.0), 2) AS "Max", ROUND(AVG (Milliseconds/ 60000.0), 2) AS "Average"
FROM Track 
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Album.ArtistID = Artist.ArtistID
WHERE Artist.Name LIKE 'Metallica'
GROUP BY Album.Title;


-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT ROUND(AVG (Milliseconds/ 60000.0), 2) AS "Average Track Length", Genre.Name AS "Genre"
FROM Track
JOIN Genre ON Genre.GenreId = Track.GenreId
GROUP BY Genre;


-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT ROUND(AVG (Milliseconds/ 60000.0), 2) AS "Average Track Length", Genre.Name AS "Genre", MediaType.Name AS "Media Type"
FROM Track
JOIN Genre ON Genre.GenreId = Track.GenreId
JOIN MediaType ON Track.MediaTypeID = MediaType.MediaTypeId
GROUP BY MediaType.Name, Genre
ORDER BY MediaType.Name, Genre;



-- Leave this comment for grading purposes
-- Your code for part 4 here:
SELECT Artist.Name AS "Artist", COUNT(Track.Name) AS "Number of Songs"
FROM Track
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist
HAVING "Number of Songs" > 100;



-- Leave this comment for grading purposes
-- Your code for part 5 here:
SELECT Artist.Name AS "Artist", ROUND(SUM(Milliseconds/3600000.0),2) AS "Number of Hours"
FROM Track
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE Genre.Name <> 'TV Shows' AND Genre.Name <>'Drama' AND Genre.Name <>'Comedy' AND Genre.Name <> 'Sci Fi & Fantasy' AND Genre.Name <>'Science Fiction'
GROUP BY Artist
HAVING "Number of Hours" > 4
ORDER BY "Number of Hours" DESC;


