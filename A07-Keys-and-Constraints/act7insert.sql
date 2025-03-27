-- Copy your code from act6insert.sql, and modify as necessary:

INSERT INTO Yotes 
VALUES 
    (12, 'Jim', 'Dull', 'jdull@collegeofidaho.edu'),
    (256, 'Jonny', 'Comes', 'jcomes@collegeofidaho.edu'),
    (201, 'Clara', 'Madsen', 'cmadsen@yotes.collegeofidaho.edu'),
    (153, 'Alice', 'Simurdak', 'asimurdak@yotes.collegeofidaho.edu'),
    (205912, 'Aayush', 'Shrestha','aayush.shrestha@yotes.collegeofidaho.edu'),
    (13, 'Dave', 'Rosoff', 'drosoff@collegeofidaho.edu'),
    (14, 'Ozgur', 'Seyben', 'oseyben@collegeofidaho.edu'),
    (15, 'Muffet', 'Jones', 'mjones@collegeofidaho.edu'),
    (16, 'Lynda', 'Danielson', 'ldanielson@collegeofidaho.edu'),
    (17, 'Jason', 'McClelland', 'jmcclelland@collegeofidaho.edu'),
    (18, 'Robin', 'Cruz', 'rcruz@collegeofidaho.edu');
    
-- Insert data into Courses here:
INSERT INTO Courses 
VALUES 
    (1234, 'CSC', '270', 1 , '2024', 'Spring' , 256),
    (2468, 'PHY', '271L', 2 , '2024', 'Fall' , 12),
    (1111, 'CSC', '270', 1 , '2023', 'Spring' , 256),
    (1233, 'CSC', '270', 1 , '2020', 'Spring' , 17),
    (1232, 'CSC', '270', 1 , '2021', 'Spring' , 18),
    (1012, 'MAT', '461', 1 , '2022', 'Fall' , 256),
    (2467, 'CSC', '340', 1 , '2024', 'Spring' , 16),
    (2466, 'MAT', '361', 1 , '2024', 'Spring' , 13),
    (2465, 'ART', '375', 2 , '2024', 'Spring' , 14),
    (2464, 'ARH', '205', 1 , '2024', 'Fall' , 15);
    


-- Insert data into CourseMeetings here:
INSERT INTO CourseMeetings 
VALUES 
    (12, 1012, 'MWF', '13:00' , '13:50', 'Boone 132'),
    (34, 1234, 'TH', '09:25' , '10:40', 'CML 105'),
    (56, 2468, 'H', '08:00' , '10:40', 'TBD'),
    (13, 2466, 'MWF', '11:00' , '11:50', 'Boone 122'),
    (14, 2465, 'MWF', '14:00' , '14:50', 'Langroise 202'),
    (15, 2464, 'MWF', '15:00' , '17:50', 'Langroise 201'),
    (16, 2467, 'TT', '08:00' , '09:15', 'CML 106'),
    (17, 1233, 'MWF', '13:00' , '13:50', 'Boone 132'),
    (18, 1232, 'MWF', '13:00' , '13:50', 'Boone 132');    


-- Insert data into CourseStudent here:
INSERT INTO CourseStudent
VALUES 
    (1111, 201),
    (1111, 153),
    (2468, 153), 
    (1012, 201),
    (1234, 205912),
    (2467, 205912),
    (2466, 205912),
    (2465, 205912),
    (2464, 205912);


-- Insert data into CourseDetails here:
INSERT INTO CourseDetails
VALUES
    ('CSC', '270', 'Applied Databases', 3, 
     'An introduction to the fundamental concepts of database design and management. Topics may include entity-relationship and relational data models, normalization, relational database design and implementation, SQL, and administration.'),
    ('MAT', '461', 'Abstract Algebra', 3, 
     'An introduction to the study of abstract algebra via the theory of groups and rings.'),
    ('PHY', '271L', 'Analytical Physics I Lab', 1, 
     'An integral part of PHY-271, with which it should normally be taken concurrently. One laboratory period weekly. Credit for PHY-271L will not be granted to students who have completed PHY-231L.'),
    ('CSC', '340', 'Design and Analysis of Algorithms', 3, 
     'Designing and Analyzing Algorithms in Computer Science.'),
    ('MAT', '361', 'Linear Algebra', 3, 
     'Study Linear Algebra and its contents.'),
    ('ARH', '205', 'Renaissance to Modern', 3, 
     'Study about sculptures and paintings from Renaissance.'),
    ('ART', '375', 'Digital Video', 3, 
     'Learn about shot angles, frames, lightings and other video things.');