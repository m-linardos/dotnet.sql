--- stored procedure - just employee,list all employees, user enters first name, print out all employees with that name

CREATE PROCEDURE Employee_by_Firstname
	@firstname nvarchar(30),
	@lastname nvarchar(30),
	@jobid int
	AS
	BEGIN 
		SELECT CONCAT(e.Lastname, ',', e.Firstname) as 'Name'
		FROM Employee e
		ORDER BY Name;
	END
	