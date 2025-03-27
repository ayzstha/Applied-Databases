-- Copy your code from act6create.sql, and then add keys and constraints:
-- PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Yotes;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS CourseMeetings;
DROP TABLE IF EXISTS CourseStudent;
DROP TABLE IF EXISTS CourseDetails;

-- Do not modify the code above

-- Your code to create the Yotes table here:
CREATE TABLE Yotes (
    YoteId INTEGER PRIMARY KEY NOT NULL,
    FirstName  VARCHAR(10),
    LastName  VARCHAR(10),
    Email  VARCHAR(30) UNIQUE NOT NULL
);


-- Your code to create the Courses table here:
CREATE TABLE Courses (
    CourseId INTEGER NOT NULL,
    CourseSubject  VARCHAR(10),
    CourseNumber  VARCHAR(10),
    Section INTEGER DEFAULT 1,
    "Year" VARCHAR(5),
    Term VARCHAR (7),
    InstructorId INTEGER,
    FOREIGN KEY (InstructorId) REFERENCES Yotes(YoteId)
    ON DELETE SET NULL,
    FOREIGN KEY (CourseSubject, CourseNumber) REFERENCES CourseDetails (CourseSubject, CourseNumber)
    ON DELETE CASCADE,
    CHECK (Term IN ('Fall', 'Winter', 'Spring', 'Summer')),
    PRIMARY KEY(CourseId)
);


-- Your code to create the CourseMeetings table here:
CREATE TABLE CourseMeetings (
    CourseMeetingId INTEGER NOT NULL PRIMARY KEY,
    CourseId  INTEGER,
    Days  VARCHAR(8),
    StartTime TEXT,
    EndTime TEXT CHECK (StartTime < EndTime),
    Location VARCHAR (15),
    FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
    ON DELETE CASCADE
);



-- Your code to create the CourseStudent table here:
CREATE TABLE CourseStudent (
    CourseId INTEGER NOT NULL,
    StudentId  INTEGER NOT NULL,
    PRIMARY KEY (CourseId, StudentId),
    FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
    ON DELETE CASCADE,
    FOREIGN KEY (StudentId) REFERENCES Yotes(YoteId)
    ON DELETE CASCADE
);


-- Your code to create the CourseDetails table here:
CREATE TABLE CourseDetails (
    CourseSubject VARCHAR(10) NOT NULL,
    CourseNumber  INTEGER NOT NULL,
    Title  TEXT NOT NULL,
    Credits INTEGER,
    CourseDescription TEXT,
    CHECK (Credits BETWEEN 0 AND 10),
    PRIMARY KEY (CourseSubject, CourseNumber)
);

