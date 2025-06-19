CREATE DATABASE COMPANYDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees ( FirstName, LastName, Department, Salary, HireDate)
Values ('Sadiq', 'Ali', 'IT', 10000, '2024-01-15');
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50)
);

Select * FROM Employees;

SELECT FirstName, LastName From Employees Where Salary > 5000;

UPDATE Employees
SET Salary = 65000
WHERE EmployeeID = 1;

DELETE FROM Employees WHERE EmployeeID = 1;

-- Inner Join Example

SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Department d ON e.Department = d.DepartmentID;


-- GROUP BY and Aggregates 
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- Subquaries
SELECT FirstName, LastName
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
