/**** Create stored procedure to retrieve employees by department ****/
CREATE PROCEDURE GetEmployeesByDepartment
@DepartmentID INT
AS
BEGIN
    SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, e.Salary
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    WHERE e.DepartmentID = @DepartmentID;
END;

exec GetEmployeesByDepartment @DepartmentID = 3

--SELECT *FROM Employees




