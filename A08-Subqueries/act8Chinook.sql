-- Your code for part 1 here:
SELECT Title FROM Album WHERE ArtistId IN
  (SELECT ArtistId FROM Artist
  WHERE Name LIKE 'Led Zeppelin')
;

-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT Email FROM Customer WHERE SupportRepID IN
  (SELECT EmployeeId FROM Employee
  WHERE FirstName||' '||LastName = 'Jane Peacock')
ORDER BY Email
;


-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT FirstName, LastName FROM Employee WHERE EmployeeID IN
(SELECT ReportsTo FROM Employee);


-- Leave this comment for grading purposes
-- Your code for part 4 here:
SELECT FirstName, LastName FROM Employee WHERE EmployeeID NOT IN
(SELECT ReportsTo FROM Employee WHERE ReportsTo IS NOT NULL);


-- Leave this comment for grading purposes
-- Your code for part 6 here:
UPDATE Employee
SET Title = (SELECT Title FROM Employee WHERE FirstName||' '||LastName = 'Nancy Edwards')
, ReportsTo = (SELECT ReportsTo FROM Employee WHERE FirstName||' '||LastName = 'Nancy Edwards')
WHERE FirstName||' '||LastName = 'Dave Rosoff';


-- Leave this comment for grading purposes
-- Your code for part 7 here:
UPDATE Employee
SET ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName||' '||LastName = 'Dave Rosoff')
WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName||' '||LastName = 'Nancy Edwards');

