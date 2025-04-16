SELECT 
	DE.FirstName, 
	DE.LastName, 
	SAL.JobTitle, 
	SAL.Salary,

CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.06)
	ELSE Salary + (Salary * 0.03)
END AS AFTER_BONUS
FROM EmployeeDemographics AS DE
JOIN EmployeeSalary AS SAL
ON DE.EmployeeID = SAL.EmployeeID

