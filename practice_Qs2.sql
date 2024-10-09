-- Practice Qs

-- Qs: Create a table to store student info (roll_no, name, city, marks).

-- Insert following data in the table:

-- 110, "adam", "Delhi", 76

-- 108, "bob", "Mumbai", 65

-- 124, "casey", "Pune", 94

-- 112, "duke", "Pune", 80


----------------------------------------------------------------------------------------------------------


-- 15. Practice Qs2 mp4

-- Practice Qs

-- • Select all students who scored 75+

-- • Find names of all cities where students are from

-- • Find the maximum marks of students from each city

-- • Find the average of the class

-- • Add a new column grade, assign grade such that marks > 80, grade = O marks 70-80, grade = A

-- marks 60-70, grade = B



----------------------------------------------------------------------------------------------------------


CREATE TABLE student_info(
roll_no INT NOT NULL PRIMARY KEY,
name VARCHAR(25) NOT NULL,
city VARCHAR(25) DEFAULT "Delhi",
marks INT
);

INSERT INTO student_info
(roll_no, name, city, marks)
VALUES
(110, "adam", "Delhi", 76),
(108, "bob", "Mumbai", 65),
(124, "casey", "Pune", 94),
(112, "duke", "Pune", 80);

SELECT * FROM student_info
WHERE marks > 75;

SELECT DISTINCT city FROM student_info;

SELECT city
FROM student_info
GROUP BY city;

SELECT city, max(marks)
FROM student_info
GROUP BY city;

SELECT avg(marks)
FROM student_info;

ALTER TABLE student_info
ADD COLUMN grade VARCHAR(2);

UPDATE student_info
SET grade = "O"
WHERE marks >= 80;

UPDATE student_info
SET grade = "A"
WHERE marks >= 70 AND marks < 80;

UPDATE student_info
SET grade = "B"
WHERE marks >= 60 AND marks < 70;

SELECT * FROM student_info;