-- Your code for part 1 here:
SELECT p1.firstName||' '||p1.lastName AS "Parent", p2.firstName||' '||p2.lastName AS "Child"
FROM Person AS p1
LEFT JOIN ParentChild AS pc ON p1.personID = pc.parentID
JOIN Person AS p2 ON pc.childID = p2.personID;


-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT DISTINCT p1.firstName AS "Siblings"
FROM ParentChild AS pc
JOIN Person AS p1 ON pc.childID = p1.personID
JOIN Person AS p2 ON pc.parentID = p2.personID
WHERE p2.firstName||' '||p2.lastName = 'Molly Prewett' AND p1.firstName <> 'Ron'
ORDER BY "Siblings";


-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT gp.firstName||' '||gp.lastName AS "Grandparent", p.firstName||' '||p.lastName AS "Parent", c.firstName||' '||c.lastName AS "Child"
FROM ParentChild AS pc
JOIN Person AS gp ON pc.parentID = gp.personID
JOIN Person AS p ON pc.childID = p.personID
JOIN ParentChild AS pc2 ON pc2.parentID = p.personID
JOIN Person AS c ON pc2.childID = c.personID
WHERE c.firstName NOT NULL;


