DROP VIEW IF EXISTS President;
DROP VIEW IF EXISTS DiedInOffice;
DROP VIEW IF EXISTS VicePresident;
-- Do not modify the code above this line

-- Leave this comment for grading purposes
-- Your code for part 1 here:
CREATE VIEW President AS
SELECT
po.politician_id,
p.firstname,
p.middlename,
p.lastname,
po.start_date,
po.end_date

FROM
  PoliticianOffice AS po
  JOIN Politician AS p ON p.politician_id = po.politician_id
  JOIN Office AS o ON o.office_id = po.office_id
WHERE
o.title = 'President';

SELECT * FROM President;

-- INSERT INTO Politician (politician_id, firstname, lastname, middlename, suffix, birthdate, city_of_birth, state_of_birth, country_of_birth)
-- VALUES (123,'Barack', 'Obama', 'Hussein', 'II', '1961-08-04','Honolulu', 'Hawaii', 'United States'); 

-- INSERT INTO Office (office_id, title)
-- VALUES (2059, 'President');

-- INSERT INTO PoliticianOffice(politician_office_id, politician_id, office_id, start_date, end_date)
-- VALUES (20591, 123, 2059, '2009-01-20','2017-01-20');


-- Leave this comment for grading purposes
-- Your code for part 3 here:
CREATE VIEW DiedInOffice AS
SELECT
p.firstname,
p.lastname,
o.title AS "office",
p.deathdate

FROM
  PoliticianOffice AS po
  JOIN Politician AS p ON p.politician_id = po.politician_id
  JOIN Office AS o ON o.office_id = po.office_id
WHERE po.end_date = p.deathdate
ORDER BY p.deathdate;

SELECT * FROM DiedInOffice;

-- -- Leave this comment for grading purposes
-- -- Your code for part 4 here:
CREATE VIEW VicePresident AS
SELECT
p1.firstname ||' '||p1.lastname AS "vice_president",
p2.firstname ||' '||p2.lastname AS "president",

CASE WHEN po1.start_date >= po2.start_date 
THEN po1.start_date
ELSE po2.start_date
END
AS "start_date",

CASE WHEN po1.end_date >= po2.end_date 
THEN po2.end_date
ELSE po1.end_date
END
AS "end_date"

FROM
  PoliticianOffice AS po1
  JOIN PoliticianOffice AS po2 ON po1.start_date < po2.end_date AND po1.end_date > po2.start_date
  JOIN Politician AS p1 ON p1.politician_id = po1.politician_id
  JOIN Politician AS p2 ON p2.politician_id = po2.politician_id
  JOIN Office AS o1 ON o1.office_id = po1.office_id
  JOIN Office AS o2 ON o2.office_id = po2.office_id

WHERE o1.title = 'Vice President' AND o2.title = 'President'
ORDER BY "start_date";

SELECT * FROM VicePresident;




