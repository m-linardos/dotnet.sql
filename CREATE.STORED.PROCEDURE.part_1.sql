-- 

CREATE PROCEDURE Employee_Job_List								-- / Create Stored Procedure
AS
BEGIN
	SELECT CONCAT(e.Lastname, ',', e.Firstname) as 'Name', 
		j.Description as 'Job', FORMAT(J.Salary, 'C') as Salary
	FROM Employee e
	JOIN Job j
		on j.Id = e.JobId
ORDER BY Name;
end