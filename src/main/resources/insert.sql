PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

INSERT INTO courses (course_id, course_name, credits)
VALUES (101, 'Discrete Mathematics', 4),
       (201, 'Object-Oriented Programming', 3),
       (301, 'Database Systems', 2);

INSERT INTO students (id, name, email, age, course_id)
VALUES (5, 'John Smith', 'john.smith@example.com', 20, 101),
       (2, 'Emma West', 'emma.west@example.com', 19, 301),
       (4, 'Leonardo North', 'leonardo.north@example.com', 18, 301),
       (1, 'Peter Parker', 'peter.parker@example.com', 25, 101),
       (3, 'Homer Simpson', 'homer.simpson@example.com', 21, 101);

-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
-- INSERT INTO students (id, name, email, age, course_id)
-- VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);
