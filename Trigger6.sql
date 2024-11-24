/**** Create a trigger to log salary changes ****/
CREATE TABLE SalaryChangeLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,
    OldSalary DECIMAL(10, 2),
    NewSalary DECIMAL(10, 2),				
    ChangeDate DATETIME DEFAULT GETDATE()
);

SELECT * FROM SalaryChangeLog




CREATE TRIGGER trgSalaryUpdate
ON Employees
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Salary)
    BEGIN
        INSERT INTO SalaryChangeLog (EmployeeID, OldSalary, NewSalary)
        SELECT i.EmployeeID, d.Salary AS OldSalary, i.Salary AS NewSalary
        FROM inserted i
        JOIN deleted d ON i.EmployeeID = d.EmployeeID;
    END;
END;

SELECT * FROM Employees