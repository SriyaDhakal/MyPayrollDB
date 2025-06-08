-- CREATE TABLES--
CREATE DATABASE Payroll_db;
use payroll_db;
-- Employee

CREATE TABLE Employee(
  Employee_Id INT(6),
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  City VARCHAR(25),
  State VARCHAR(25),
  Department_id int (6),
  CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id),
   FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_id)
        );
  select * from employee;
  ---------------------------------------------------
-- Department
---------------------------------------------------
  CREATE TABLE Department(
  Department_Id int(6),
  Department_Name VARCHAR(30),
  CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Department_Id)
  );
  
  -------------------------------------------------
  -- Salary
  -------------------------------------------------
  
  CREATE TABLE Salary1(
  Salary_Id int(6),
  Gross_Salary int(6),
  Hourly_Pay int(6),
  State_Tax int(6),
  Federal_Tax int(6),
  Account_Id int(6),
  CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
  FOREIGN KEY (Account_Id)
        REFERENCES AccountDetails1(Account_Id)
        );
  
  -- departmentProject Bridge
  
  CREATE TABLE DepartmentProject(
  Department_Id int(10),
  Project_Id int(10),
  CONSTRAINT DEPTPROJECT_PK PRIMARY KEY (Department_Id,Project_Id),
  FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_Id),
  FOREIGN KEY (Project_Id)
        REFERENCES Project(Project_Id)
  );

--------------------------------------------------
  -- Project
  --------------------------------------------------
  CREATE TABLE Project(
  Project_Id int(6),
  Project_Name VARCHAR(50),
  Project_Description VARCHAR(50),
  CONSTRAINT Project_PK PRIMARY KEY (Project_Id)
  );
  
  -- account details
  CREATE TABLE AccountDetails1(
  Account_id int,
  Bank_name VARCHAR(10),
  Account_number VARCHAR(10),
  Employee_id int,
   CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  
);

-- EDUCATION

CREATE TABLE EDUCATION(
EDUCATION_ID INT(6),
EMPLOYEE_ID INT(6),
DEGREE VARCHAR(30),
CONSTRAINT Location_PK PRIMARY KEY (Education_Id),
FOREIGN KEY (EMPLOYEE_ID)
  references Employee(employee_id)
 
);
  SELECT * from EDUCATION;

---------------------------------------------------
  -- Leave
  ---------------------------------------------------
  
  CREATE TABLE Leave1(
  Leave_Id int,
  Employee_Id int,
  Leave_date DATE,
  CONSTRAINT Leave_PK PRIMARY KEY (Leave_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  ----------------------------------------------------
  -- Attendance
  ----------------------------------------------------
   
  CREATE TABLE Attendance(
  Attendance_Id int,
  Hours_Worked int,
  CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id)
  );
  
  ----------------------------------------------------
  -- WorkLocation
  ----------------------------------------------------
  CREATE TABLE Work_Location(
  Location_Id int,
  Location VARCHAR(25),
  Number_Of_Employees int,
  City VARCHAR(25),
  State VARCHAR(25),
  CONSTRAINT Loc_PK PRIMARY KEY (Location_Id)
  );
  
  