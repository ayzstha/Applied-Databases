-- Your code for part 3 here:
SELECT DISTINCT release_year
FROM Shows
ORDER BY release_year DESC
LIMIT 3;

SELECT DISTINCT type
FROM Shows;

SELECT DISTINCT title
FROM Shows
WHERE duration = '11 Seasons';



-- Leave this comment for grading purposes
-- Your code for Part 4 here:
SELECT  title, rating, duration, release_year
FROM Shows
WHERE director = 'Quentin Tarantino';



-- Leave this comment for grading purposes
-- Your code for Part 5 here:
SELECT  DISTINCT title, type, rating, duration
FROM Shows
WHERE release_year = '2000'
ORDER BY type, rating, title;




-- Leave this comment for grading purposes
-- Your code for Part 6a here:
SELECT  DISTINCT title, date_added
FROM Shows
ORDER BY date_added DESC
LIMIT 25;




