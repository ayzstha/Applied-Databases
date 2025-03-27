-- Your code for part 1 here:
SELECT b.Title AS "Album Title", a.Name AS "Artist"
FROM
  Album AS b
  JOIN Artist AS a ON b.ArtistID = a.ArtistID
  WHERE b.title LIKE 'R%';



-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT a.FirstName ||' '||a.LastName AS "Customer", b.FirstName ||' '||b.LastName AS "Support Rep"
FROM Customer AS a
JOIN Employee AS b ON a.SupportRepId = b.EmployeeId
WHERE "Customer" IS NOT NULL AND "Support Rep" IS NOT NULL
ORDER BY b.LastName, a.LastName;



-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT a1.FirstName ||' '||a1.LastName AS "Employee", a2.FirstName ||' '||a2.LastName AS "Boss"
FROM Employee AS a1
LEFT JOIN Employee AS a2 ON a1.ReportsTo = a2.EmployeeId
ORDER BY "Boss" NULLS last;


-- Leave this comment for grading purposes
-- Your code for part 4 here:
SELECT a.Name AS "Track" , b.Name AS "Playlist"
FROM Track AS a
JOIN PlaylistTrack AS c ON a.TrackID = c.TrackID
JOIN Playlist AS b ON b.PlaylistID = c.PlaylistID
WHERE "Playlist" = 'Grunge' OR "Playlist" = 'Heavy Metal Classic';



-- Leave this comment for grading purposes
-- Your code for part 5 here:
SELECT round((t.Milliseconds / 1000.0),2) AS "Duration", t.Name AS "Track", al.Title AS "Album", ar.Name AS "Artist"
FROM Track AS t
JOIN Album AS al ON t.AlbumID = al.AlbumID
JOIN Artist as ar ON al.ArtistID = ar.ArtistID
WHERE "Duration" < 50
ORDER BY "Duration";



-- Leave this comment for grading purposes
-- Your code for part 6 here:
SELECT t.Name AS "Track"
FROM Invoice AS i
JOIN InvoiceLine AS il ON i.InvoiceID = il.InvoiceID
JOIN Customer AS c ON i.CustomerID = c.CustomerID
JOIN Track AS t ON il.TrackID = t.TrackID
WHERE c.FirstName||' '||c.LastName = 'Mark Taylor' 
ORDER BY "TRACK";


-- Leave this comment for grading purposes
-- Your code for part 7 here:
SELECT DISTINCT c.CustomerID AS "Customer ID", c.LastName AS "Last Name"
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerID = i.CustomerID
JOIN InvoiceLine AS il ON i.InvoiceID = il.InvoiceID
JOIN Track AS t ON il.TrackID = t.TrackID
JOIN Album AS a ON t.AlbumID = a.AlbumID
JOIN Artist AS ar ON a.ArtistID = ar.ArtistID
WHERE ar.Name = 'AC/DC';

