-- SP Exercise - Increase salary by 10% when given job description.
-- use update instead of select
-- Salary = Salary*1.1;


USE [EmploymentDb2]
GO
/****** Object:  StoredProcedure [dbo].[Ten_Pct_Increase]    Script Date: 7/18/2019 2:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Ten_Pct_Increase]
	@JobDescription nvarchar(30)
AS
	UPDATE Job
	SET Salary = Salary*1.1
	WHERE Description = @JobDescription
BEGIN
EXEC Ten_Pct_Increase @Jobdescription = 'President';
END

select * from job;