DECLARE @dept nvarchar(30) = 'Director        

SELECT * FROM job where description = @dept;						-- SHOWS DIRECTOR SALARY BEFORE

Exec Ten_Pct_Increase 'Director';							-- Calling Stored Procedure

SELECT * FROM Job WHERE Description = @dept							-- SHOWS DIRECTOR SALARY AFTER