-- A table containing the students enrolled in a yearly course has incorrect data in records with ids between 20 and 100 (inclusive).

-- TABLE enrollments
--    id INTEGER NOT NULL PRIMARY KEY
--    year INTEGER NOT NULL
--    studentId INTEGER NOT NULL

-- Write only the SQL statement that solves the problem and nothing else.
UPDATE enrollments
SET year = 2015
WHERE id between 20 and 100; 

-- OR

UPDATE enrollments
SET year = 2015
WHERE id >= 20 and id <= 100;
