--DECLARE @job nvarchar(30) = 'Directar';   -- returns no id due to misspelling
--SELECT id from job where description = @job;

--EXAMPLE 1
DECLARE @job nvarchar(30) = 'Director';   -- returns id 

IF EXISTS (SELECT id from job where description = @job)
BEGIN
	PRINT 'That job exists.'
END
ELSE
BEGIN
	PRINT 'That job does not exist.'
END




