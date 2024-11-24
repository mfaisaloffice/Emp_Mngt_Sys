-- Inserting values into Departments
INSERT INTO Departments (DepartmentName)
VALUES ('HR'), ('IT'), ('Finance');

SELECT * FROM Departments


-- Inserting values into Employees
INSERT INTO Employees (FirstName, LastName, HireDate, DepartmentID, Salary)
VALUES	('Shabbir', 'Ahmed', '2022-01-01', 1, 50000),
		('Rashid', 'Ali', '2021-07-15', 2, 60000),
		('Mehak', 'Jaan', '2023-03-10', 3, 55000),
		('Ayesha', 'Khan', '2022-02-15', 2, 52000),
		('Ali', 'Zaidi', '2022-03-10', 1, 48000),
		('Fatima', 'Raza', '2022-04-20', 3, 53000),
		('Hassan', 'Iqbal', '2022-05-05', 2, 51000),
		('Sara', 'Ansari', '2022-06-18', 1, 49500),
		('Usman', 'Sheikh', '2022-07-25', 3, 55000),
		('Zain', 'Malik', '2022-08-12', 2, 47000),
		('Hira', 'Shah', '2022-09-30', 1, 51500),
		('Bilal', 'Akhtar', '2022-10-22', 3, 54000),
		('Nida', 'Farooq', '2022-11-15', 2, 49000)

-- Updating name as Ali Asghar instead of Mehak Jaan in Employees Table at EmpID 3:-

update Employees
set FirstName = 'Ali', LastName = 'Asghar'
where EmployeeID = 3

-- Delte some record from Employees Table:-
delete from employees where EmployeeID IN (1002, 1003)
	
SELECT * FROM Employees