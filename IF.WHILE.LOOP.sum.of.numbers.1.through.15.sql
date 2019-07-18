/*    what is the sum of the numbers 1 through 15    */

DECLARE @index int = 0;
DECLARE @sum int = 0;

WHILE @index <= 15
BEGIN
	SET @sum = @sum + @index;
	SET @index = @index + 1;
END
PRINT 'The sum of 1 through 15 is ' + CAST(@sum as nvarchar(10));		-- PRINT statement requires string data type so CAST is used