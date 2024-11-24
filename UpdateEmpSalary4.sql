/**** Query 2: Update Salary for an Employee ****/


UPDATE Employees
SET Salary = 70000
WHERE EmployeeID = 2;

--==============================

UPDATE Employees
SET Salary = Salary * 1.10
WHERE EmployeeID = 1;

SELECT * FROM Employees
--==============================

update Employees
set salary = Salary * 1.10
where EmployeeID = 3