DROP TABLE IF EXISTS Yotes;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS CourseMeetings;
DROP TABLE IF EXISTS CourseStudent;
DROP TABLE IF EXISTS CourseDetails;
-- Do not modify the code above

-- Your code to create the Yotes table here:
CREATE TABLE Yotes (
    YoteId INTEGER,
    FirstName  VARCHAR(10),
    LastName  VARCHAR(10),
    Email  VARCHAR(30)
);


-- Your code to create the Courses table here:
CREATE TABLE Courses (
    CourseId INTEGER,
    CourseSubject  VARCHAR(10),
    CourseNumber  VARCHAR(10),
    Section INTEGER,
    "Year" VARCHAR(5),
    Term VARCHAR (7),
    InstructorId INTEGER
);


-- Your code to create the CourseMeetings table here:
CREATE TABLE CourseMeetings (
    CourseMeetingId INTEGER,
    CourseId  INTEGER,
    Days  VARCHAR(8),
    StartTime TEXT,
    EndTime TEXT,
    Location VARCHAR (15)
);



-- Your code to create the CourseStudent table here:
CREATE TABLE CourseStudent (
    CourseId INTEGER,
    StudentId  INTEGER
);


-- Your code to create the CourseDetails table here:
CREATE TABLE CourseDetails (
    CourseSubject VARCHAR(10),
    CourseNumber  INTEGER,
    Title  TEXT,
    Credits INTEGER,
    CourseDescription TEXT
);


