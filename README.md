Created README.md file to explain the project.

Adding the Project Title and Description
# Employee Management System
This project is a simple **Employee Management System** built using SQL Server. It demonstrates basic database design, CRUD operations, stored procedures, and triggers for managing employees and departments.

Before running the SQL scripts, ensure having the following:

- SQL Server Management Studio (SSMS) or any SQL Server client.
- SQL Server instance to connect and run the queries.

## Features
- **Employees Table**: Stores employee details like name, department, salary, etc


Database Structure
The database consists of two main tables: **Employees** and **Departments**.

### Table 1: Employees

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    CONSTRAINT FK_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

Table 2: Departments

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(50) NOT NULL
);

The Employees table references the Departments table through a foreign key (DepartmentID).


Files Description

### 1. `CreateEmployeesTable.sql`
This script creates the **Employees** and **Departments** tables along with the necessary foreign key relationships.

### 2. `InsertSampleData.sql`
This script inserts sample data into the **Employees** and **Departments** tables for testing.

### 3. `EmployeeQueries.sql`
Contains sample queries to retrieve employee data and join it with department information.

### 4. `UpdateEmployeeSalary.sql`
This script demonstrates how to update employee salaries.

 ### 5. `Stored Procedures`
Retrieves employees based on department.
### 6.  `Triggers`
Logs salary changes.


