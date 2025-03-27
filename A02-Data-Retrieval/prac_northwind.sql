-- Your code for part 1 here:
SELECT DISTINCT Title 
FROM Employees;



-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT FirstName, LastName, Title
FROM Employees
WHERE Region = 'North America'
ORDER BY LastName;




-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT DISTINCT ShipCountry
FROM Orders
ORDER BY ShipCountry;



-- Leave this comment for grading purposes
-- Your code for part 4 here:
SELECT OrderID, OrderDate, RequiredDate, ShippedDate
FROM Orders
WHERE ShippedDate > RequiredDate;


-- Leave this comment for grading purposes
-- Your code for part 5 here:
SELECT ProductName, UnitsInStock
FROM Products
WHERE Discontinued = '1';



-- Leave this comment for grading purposes
-- Your code for part 6 here:
SELECT * FROM "Order Details" LIMIT 4;


-- Leave this comment for grading purposes
-- Your code for part 7 here:
SELECT OrderID, Quantity, UnitPrice
FROM "Order Details" 
WHERE ProductID = 33
ORDER BY UnitPrice DESC, Quantity;




