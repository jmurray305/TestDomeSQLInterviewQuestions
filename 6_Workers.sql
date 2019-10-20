-- The following data definition defines an organization's employee hierarchy.
-- 
-- An employee is a manager if any other employee has their managerId set to the first employees id. An employee who is a manager may or may not also have a manager.
-- 
-- TABLE employees
--   id INTEGER NOT NULL PRIMARY KEY
--   managerId INTEGER REFERENCES employees(id)
--   name VARCHAR(30) NOT NULL
-- 
-- Write a query that selects the names of employees who are not managers.

SELECT name 
FROM employees
WHERE id not in 
  (
    SELECT e1.id 
    FROM employees as e1 
    JOIN employees as e2 
      ON e1.id = e2.managerId
  )
;
