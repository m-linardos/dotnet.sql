--	IF/ELSE STATEMENT  --

--EXAMPLE 2
DECLARE @job nvarchar(30) = 'DErector';   -- returns id 

IF EXISTS (SELECT id from job where description = @job)
BEGIN
	PRINT 'That job exists.'
END
ELSE
BEGIN
	PRINT 'That job does not exist.'
END