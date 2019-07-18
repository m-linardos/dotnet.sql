--- stored procedure - just employee,list all employees, user enters first name, print out all employees with that name

-- 1) cREATE TEMPLATE  gd
CREATE PROCEDURE Employee_by_Firstname2
	@firstname nvarchar(30)
	
	AS
	BEGIN 
	
	END
	GO
	EXEC Employee_by_Firstname2 'aBE';
	GO

	
	
/** ????   see vid 7/18 @ 5:30  **/

/*  CREATE PROCEDURE Employee_by_Firstname2
	@firstname nvarchar(30)
	
	AS
	BEGIN 
	
		SELECT from Employee where Firstname = @firstname 
		FROM Employee e
		WHERE Firstname = @firstname
		ORDER BY Name;
	END   */
	