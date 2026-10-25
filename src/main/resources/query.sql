PRAGMA foreign_keys = ON;

-- Select all courses.
SELECT *
FROM courses;


-- Select all students.
SELECT *
FROM students;


-- Select students older than 20.
-- Hint: use WHERE.
SELECT *
FROM students
WHERE age > 20;


-- Show student names together with course names.
-- Show: student name, email, age and course name.
-- Hint: use JOIN ... ON students.course_id = courses.course_id
SELECT name, email, age, course_name
FROM students
         JOIN courses ON students.course_id = courses.course_id;


-- Count how many students are in each course.
-- Courses with 0 students should also be shown.
-- Hint: use COUNT, LEFT JOIN and GROUP BY.
SELECT courses.course_id, course_name, COUNT(students.course_id)
FROM courses
         LEFT JOIN students ON courses.course_id = students.course_id
GROUP BY courses.course_id;


-- Update the first student's age.
-- Then select that student to check the update.
-- Hint: use UPDATE ... SET ... WHERE ...
UPDATE students
SET age = 23
WHERE id = 1;

SELECT *
FROM students
WHERE id = 1;


-- Move the second student to a different course.
-- Then check the update using JOIN to show the new course name.
UPDATE students
SET course_id = 201
WHERE id = 2;

SELECT name, course_name
FROM students
         JOIN courses ON students.course_id = courses.course_id
WHERE id = 2;


-- Delete one student.
-- Hint: do not forget the WHERE clause, or every student will be deleted!
DELETE
FROM students
WHERE id = 4;


-- Check the final result.
-- Show id, name, email, age and course name for every student, ordered by id.
-- Hint: use JOIN and ORDER BY.
SELECT id, name, email, age, course_name
FROM students
         JOIN courses ON students.course_id = courses.course_id
ORDER BY id;
