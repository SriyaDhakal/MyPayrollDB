-- Update table Employee
USE Payroll_db;
ALTER TABLE Employee ADD COLUMN Department_Id INT(6);
UPDATE Employee
SET Department_Id = 1 -- Assuming Department_Id 1 is for 'HR'
WHERE Employee_Id = 101;

UPDATE Employee
SET Department_Id = 2 -- Assuming Department_Id 2 is for 'Sales'
WHERE Employee_Id = 102;

UPDATE Employee
SET Department_Id = 1 -- Assigning another employee to 'HR'
WHERE Employee_Id = 103;

UPDATE Employee
SET Department_Id = 3 -- Assuming Department_Id 3 is for 'Marketing'
WHERE Employee_Id = 104;

UPDATE Employee SET Department_Id = 2 WHERE Employee_Id = 105;
UPDATE Employee SET Department_Id = 3 WHERE Employee_Id = 106;
UPDATE Employee SET Department_Id = 1 WHERE Employee_Id = 107;
UPDATE Employee SET Department_Id = 2 WHERE Employee_Id = 108;
UPDATE Employee SET Department_Id = 3 WHERE Employee_Id = 109;
UPDATE Employee SET Department_Id = 1 WHERE Employee_Id = 110;

select * from Employee;