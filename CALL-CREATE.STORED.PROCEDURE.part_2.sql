USE [EmploymentDb2]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Job_List]    Script Date: 7/18/2019 10:17:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_Job_List]					-- / Create Stored Procedure
	@search nvarchar(30)										-- / Creating a search (added)
AS
BEGIN
	SET @search = CONCAT('%', @search, '%');						-- / Specifics for @search (added)
	SELECT CONCAT(e.Lastname, ',', e.Firstname) as 'Name', 
		j.Description as 'Job', FORMAT(J.Salary, 'C') as Salary
	FROM Employee e
	JOIN Job j
		on j.Id = e.JobId
WHERE Lastname LIKE @search or Firstname LIKE @search or j.Description LIKE @search   -- / Specifics for @search (added)
ORDER BY Name;
END
GO
EXEC Employee_Job_List 'man';							-- / THIS STATEMENT CALLS THE STORED PROCEDURE / 'Anne' added an used with @search
GO



/** employees displayed based on enduser entry of number get greater than the number  **/
-- SEE 7/18 VID @ 3:02

