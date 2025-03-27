-- INSERT INTO MediaType
-- VALUES (6, 'FLAC');

-- UPDATE Customer
-- SET Email = 'ejones270@gmail.com'
-- WHERE FirstName||' '||LastName = 'Emma Jones';

-- UPDATE Customer
-- SET Address = '1234 Cleveland Blvd',
-- City = 'Caldwell',
-- State = 'ID',
-- PostalCode = '83605'
-- WHERE FirstName||' '||LastName = 'Frank Harris';

-- INSERT INTO Customer (FirstName, LastName)
-- VALUES ('Jim', 'Dull');

-- INSERT INTO Customer (FirstName, LastName, Email)
-- VALUES ('Jim', 'Dull', 'jdull@collegeofidaho.edu');

-- SELECT * FROM Customer
-- WHERE firstname = 'Jim' AND lastname = 'Dull';

-- INSERT INTO Employee (EmployeeID, Title, FirstName, LastName)
-- VALUES (13, 'Sales Support Agent', 'Lynda', 'Danielson');

-- UPDATE Customer
-- SET SupportRepId = 13
-- WHERE firstname = 'Jim' AND lastname = 'Dull';

-- SELECT a.FirstName ||' '||a.LastName AS "Customer", b.FirstName ||' '||b.LastName AS "Support Rep"
-- FROM Customer AS a
-- JOIN Employee AS b ON a.SupportRepId = b.EmployeeId
-- WHERE "Customer" IS NOT NULL AND "Support Rep" IS NOT NULL
-- ORDER BY b.LastName, a.LastName;

-- SELECT EmployeeID FROM Employee
-- WHERE firstname = 'Steve' AND lastname = 'Johnson';

-- UPDATE Customer
-- SET SupportRepId = 13
-- WHERE SupportRepId = 5;

-- SELECT a.FirstName ||' '||a.LastName AS "Customer", b.FirstName ||' '||b.LastName AS "Support Rep"
-- FROM Customer AS a
-- JOIN Employee AS b ON a.SupportRepId = b.EmployeeId
-- WHERE "Customer" IS NOT NULL AND "Support Rep" IS NOT NULL
-- ORDER BY b.LastName, a.LastName;

-- DELETE FROM Employee
-- WHERE EmployeeId = 5;

-- SELECT ArtistId FROM Artist WHERE Name = 'Aisha Duo';

-- DELETE FROM Track
-- WHERE AlbumID IN
--   (SELECT AlbumID FROM Album
--    WHERE ArtistId = 197);

-- DELETE FROM Album
-- WHERE ArtistID = 197;

-- DELETE FROM Artist
-- WHERE Name = 'Aisha Duo';



