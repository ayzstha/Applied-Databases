-- Do not modify the following line of code
-- If you're curious what it's for, ask!
DROP TABLE IF EXISTS course_schedule;

-- Write your CREATE statement here:
CREATE TABLE course_schedule (
    course TEXT,
    course_title TEXT,
    instructor TEXT,
    days TEXT,
    start_time TEXT,
    end_time TEXT,
    room TEXT   
);


-- Write your INSERT statements here:
INSERT INTO course_schedule VALUES ('CSC-270-01', 'Applied Databases', 'Comes','TH','09:25','10:40','CML 105');

INSERT INTO course_schedule VALUES ('MAT-252-01', 'Discrete Mathematics', 'Comes','MWF','09:00','09:50','Boone 116');

INSERT INTO course_schedule VALUES ('OFF-000-01', 'Office Hour', 'Comes','MT','11:00','12:00','Boone 126A');

INSERT INTO course_schedule VALUES ('OFF-000-02', 'Office Hour', 'Comes','WH','12:30','13:30','Boone 126A');


-- Write your SELECT statement here:
SELECT * FROM course_schedule;