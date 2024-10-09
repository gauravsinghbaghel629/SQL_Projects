-- Practice Qs1 mp4

-- Practice Qs

-- Qs. Create a database for your college

-- Create a table named Teacher to store (id, name, subject, salary)

-- Insert following data in the table

-- 23, "ajay", "math", 50,000

-- 47, "bharat", "english", 60,000

-- 18, "chetan", "chemistry", 45,000

-- 9, "divya", "physics", 75,000


------------------------------------------------------------------------------------------------------


-- Practice Qs


-- • Select teachers whose salary is more than 55K

-- • Rename the salary column of teacher table to ctc

-- • Update salary of all teachers by giving them an increment of 25%

-- • Add a new column for teachers called city. The default city should be "Gurgaon"

-- • Delete the salary column for teacher table

------------------------------------------------------------------------------------------------------


CREATE DATABASE IF NOT EXISTS LNCT_College;

USE LNCT_College;

CREATE TABLE Teacher(
id INT,
name VARCHAR(25) NOT NULL,
subject VARCHAR(25) NOT NULL,
salary INT DEFAULT 0,
PRIMARY KEY (id)
);

INSERT INTO Teacher
(id, name, subject, salary)
VALUES
(23, "ajay", "math", 50000), 
(47, "bharat", "english", 60000),
(18, "chetan", "chemistry", 45000),
(9, "divya", "physics", 75000);

SELECT * FROM Teacher
ORDER BY id;

SELECT * FROM Teacher
WHERE salary > 55000;

ALTER TABLE Teacher
CHANGE COLUMN salary ctc INT DEFAULT 0;

SET SQL_SAFE_UPDATES = 0;

UPDATE Teacher
SET ctc = ctc + (0.25)*ctc;

ALTER TABLE Teacher
ADD COLUMN city VARCHAR(25) DEFAULT "Gurgaon";

ALTER TABLE Teacher
DROP COLUMN ctc;