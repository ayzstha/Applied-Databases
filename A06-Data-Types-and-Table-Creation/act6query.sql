-- Your code for part 7 here:
SELECT DISTINCT FirstName AS "First Name", LastName AS "Last Name"
FROM Yotes AS y
JOIN Courses AS c ON y.YoteId = c.InstructorId
WHERE CourseSubject = 'CSC' AND CourseNumber = '270'
ORDER BY  LastName;


-- Leave this comment for grading purposes
-- Your code for part 8 here:
SELECT c.CourseSubject||'-'||c.CourseNumber||'-0'||c.Section AS "course", cd.Title AS "course_title", ci.LastName AS "instructor", cm.Days AS "days", cm.StartTime AS "start_time", cm.EndTime AS "end_time", cm.Location AS "room"
FROM Yotes AS y
JOIN CourseStudent AS cs ON y.YoteID = cs.StudentID 
JOIN Courses AS c ON cs.CourseID = c.CourseID
JOIN Yotes as ci ON ci.YoteID = c.InstructorID
JOIN CourseMeetings AS cm ON c.CourseID = cm.CourseID
JOIN CourseDetails AS cd ON c.CourseSubject||c.CourseNumber = cd.CourseSubject||cd.CourseNumber
WHERE y.YoteId = 205912;

