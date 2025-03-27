-- Your code for part 1 here:
SELECT COUNT (*) FROM Products;


-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT MIN(BirthDate) FROM Employees;


-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT ShipRegion, COUNT (*) FROM Orders 
GROUP BY ShipRegion ORDER BY COUNT(*) DESC;


-- Leave this comment for grading purposes
-- Your code for part 4 here:
SELECT ShipRegion, COUNT (*) 
FROM Orders 
WHERE ShippedDate NOT NULL 
GROUP BY ShipRegion ORDER BY COUNT(*) DESC;


-- Leave this comment for grading purposes
-- Your code for part 5 here:
SELECT ShipRegion, COUNT (*) AS C
FROM Orders 
WHERE ShippedDate NOT NULL
GROUP BY ShipRegion 
HAVING C BETWEEN 50 AND 100
ORDER BY C DESC;


-- Leave this comment for grading purposes
-- Your code for part 6 here:
SELECT Categories.CategoryName AS "Category", AVG(UnitPrice) AS "Average unit price", SUM (UnitsInStock) AS "Total number of units in stock"
FROM PRODUCTS 
JOIN Categories ON Products.CategoryId = Categories.CategoryID 
GROUP BY CategoryName
ORDER BY "Average unit price";


-- Leave this comment for grading purposes
-- Your code for part 7 here:
SELECT Categories.CategoryName AS "Category", AVG(UnitPrice) AS "Average unit price", SUM (UnitsInStock) AS "Total number of units in stock"
FROM PRODUCTS 
JOIN Categories ON Products.CategoryId = Categories.CategoryID 
WHERE Discontinued <> '1'
GROUP BY CategoryName
ORDER BY "Average unit price";


-- Leave this comment for grading purposes
-- Your code for part 8 here:
SELECT Categories.CategoryName AS "Category", AVG(UnitPrice) AS "Average unit price", SUM (UnitsInStock) AS "Total number of units in stock"
FROM PRODUCTS 
JOIN Categories ON Products.CategoryId = Categories.CategoryID 
WHERE Discontinued <> '1' 
GROUP BY CategoryName
HAVING SUM(UnitsInStock) > 300
ORDER BY "Average unit price";

