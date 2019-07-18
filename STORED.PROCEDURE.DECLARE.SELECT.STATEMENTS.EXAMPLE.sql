/***  STORED PROCEDURE ***/
-- used in scripting, especially when using IDs


--SELECT id from job where description = 'Director'

--DECLARE @id int;
DECLARE @id int;
DECLARE @salary decimal(9,2);

--SET @ID = 3;

--SELECT @id = id from job where Description = 'Director';
SELECT @id = id, @salary = salary from job where Description = 'Director';

--SELECT @id as 'ID';
SELECT @id as 'ID', @salary as 'Salary';




-- WITH SALARY FORMATTED
DECLARE @id int;
DECLARE @salary decimal(9,2);

SELECT @id = id, @salary = FORMAT(salary, 'c') from job where Description = 'Director';

-SELECT @id as 'ID', @salary as 'Salary';

-- OR

DECLARE @id int;
DECLARE @salary decimal(9,2);

SELECT @id = id, @salary = FORMAT(salary, 'c') from job where Description = 'Director';

-SELECT @id as 'ID', FORMAT(@salary, 'c') as 'Salary';