USE [EmploymentDb2]
GO
/****** Object:  StoredProcedure [dbo].[Employee_by_Firstname2]    Script Date: 7/18/2019 2:23:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- stored procedure - just employee,list all employees, user enters first name, print out all employees with that name

ALTER PROCEDURE [dbo].[Employee_by_Firstname2]
	@firstname nvarchar(30)
	
	AS
	BEGIN 
	
		SELECT CONCAT(e.Lastname, ',', e.Firstname) as 'Name'
		FROM Employee e
		WHERE Firstname = @firstname
		ORDER BY Name;
	END
	GO
	EXEC Employee_by_Firstname2 @firstname = 'Amy';
	GO

	