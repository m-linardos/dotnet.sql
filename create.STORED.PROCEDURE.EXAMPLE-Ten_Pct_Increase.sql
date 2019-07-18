-- SP Exercise - Increase salary by 10% when given job description.
-- use update instead of select
-- Salary = Salary*1.1;

CREATE PROCEDURE Ten_Pct_Increase
	@JobDescription nvarchar(30)
AS
	UPDATE Job
	SET Salary = Salary*1.1
	WHERE Description = @JobDescription
BEGIN
EXEC Ten_Pct_Increase @Jobdescription = 'President';
END