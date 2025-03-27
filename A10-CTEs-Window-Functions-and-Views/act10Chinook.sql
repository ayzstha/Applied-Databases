-- Your code for part 1 here:
SELECT 
    Album.Title AS "Album Title",
    Track.Name As "Track Name",
    Track.Milliseconds AS "Track Length", 

    AVG (Track.Milliseconds) OVER
        (PARTITION BY Album.Title)
    AS "Album Average Track Length"

FROM Track
    JOIN Album ON Album.AlbumId = Track.AlbumId
    JOIN Artist ON Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = "Foo Fighters"
ORDER BY "Album Title", "Track Length";


-- Leave this comment for grading purposes
-- Your code for part 2 here:
WITH
  atl AS
    (SELECT AVG(Track.Milliseconds) AS avge, Track.AlbumId AS AlbumId
     FROM Track
     GROUP BY Track.AlbumId)
     
SELECT
    Album.Title AS "Album Title",
    Track.Name AS "Track Name",
    Track.Milliseconds AS "Track Length",
    atl.avge AS "Album Average Track Length"

FROM Track
    JOIN Album ON Album.AlbumId = Track.AlbumId
    JOIN Artist ON Album.ArtistId = Artist.ArtistId
    JOIN atl ON atl.AlbumId = Album.AlbumId
WHERE Artist.Name = "Foo Fighters"
ORDER BY "Album Title", "Track Length";

-- Leave this comment for grading purposes
-- Your code for part 3 here:

WITH
  atl AS
    (SELECT AVG(Track.Milliseconds) AS avge, MIN(Track.Milliseconds) AS min_t, MAX(Track.Milliseconds) AS max_t, Track.AlbumId AS AlbumId
     FROM Track
     GROUP BY Track.AlbumId)
     
SELECT
    Album.Title AS "Album Title",
    Track.Name AS "Track Name",
    Track.Milliseconds AS "Track Length",
    atl.avge AS "Album Average Track Length",
    atl.min_t AS "Album Min Track Length",
    atl.max_t AS "Album Max Track Length"

FROM Track
    JOIN Album ON Album.AlbumId = Track.AlbumId
    JOIN Artist ON Album.ArtistId = Artist.ArtistId
    JOIN atl ON atl.AlbumId = Album.AlbumId
WHERE Artist.Name = "Foo Fighters"
ORDER BY "Album Title", "Track Length";




