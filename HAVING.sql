SELECT 
	SAL.JobTitle, 
	COUNT(SAL.JobTitle) AS More_Than_Once
FROM EmployeeDemographics AS DE

JOIN EmployeeSalary AS SAL
ON DE.EmployeeID = SAL.EmployeeID

GROUP BY 
	SAL.JobTitle

HAVING COUNT(SAL.JobTitle) > 1

-- promtp: List the job titles that appear more than once in the EmployeeSalary table, along with the count of how many times each appears.
