-- A university has started a student-advisor plan which assigns a professor as an advisor to each student for academic guidance. Write a query to find the roll number and names of students who either have a male advisor with a salary of more than 15,000 or a female advisor with a salary of more than 20,000.

-- There are two tables in the database: student_information and faculty_information. The primary key of student_information is roll_number whereas that of faculty_information is employee_ID.

-- ▼ Schema

-- You are provided 2 tables: student_information, faculty_information.

-- student information

-- Name

-- Type

-- Description

-- roll_number

-- INTEGER

-- The roll number of the student. This is the primary key.

-- name

-- STRING

-- The name of the student.

-- advisor

-- INTEGER

-- X

-- The employee ID of the advisor of the student

-- faculty_information

-- Name

-- Type

-- employee ID

-- INTEGER

-- Description

-- The employee ID of the professor This is the primary key.

-- gender

-- CHAR

-- The gender of the professor (M for male and F for female).

-- salary

-- INTEGER

-- The salary of the professor

-- Note: Information about any professor who acts as an advisor to a student is always present in faculty_information.


SELECT s.roll_number, s.name
FROM student_information s
JOIN faculty_information f
ON s.advisor = f.employee_ID
WHERE (f.gender = 'M' AND f.salary > 15000)
   OR (f.gender = 'F' AND f.salary > 20000);
