/**** created a new database as EmployeeManagementDB ****/
CREATE DATABASE EmployeeManagementDB


/**** Created Table 1 as Employees ****/
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1), 
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,					
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    CONSTRAINT FK_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

--sp_help Employees
SELECT * FROM Employees


/**** Created Table 2 as Departments ****/
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(50) NOT NULL
);

--sp_help Departments
SELECT * FROM Departments


