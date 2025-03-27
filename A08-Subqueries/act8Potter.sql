-- Your code for part 1 here:
SELECT
p.firstName||' '||p.lastName AS Parent,
c.firstName||' '||c.lastName AS Child
FROM
Person AS p,
Person AS c
WHERE
(p.personid, c.personid) IN (SELECT * FROM ParentChild);

-- Leave this comment for grading purposes
-- Your code for part 2 here:
SELECT
gp.firstName||' '||gp.lastName AS Grandparent,
p.firstName||' '||p.lastName AS Parent,
c.firstName||' '||c.lastName AS Child
FROM
Person AS gp,
Person AS p,
Person AS c
WHERE
(gp.personid, p.personid)IN (SELECT * FROM ParentChild) AND
(p.personid, c.personid) IN (SELECT * FROM ParentChild);


-- Leave this comment for grading purposes
-- Your code for part 3 here:
SELECT DISTINCT
    P.firstName AS Sibling
FROM
    Person AS P
WHERE
    P.personid IN (SELECT childID FROM ParentChild WHERE parentID IN (SELECT parentID FROM ParentChild WHERE childID = (SELECT personId FROM Person WHERE Person.firstName || ' ' || Person.lastName = 'Ron Weasley')))
    AND  P.firstName <> 'Ron'
ORDER BY Sibling;




