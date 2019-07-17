-- every employee making > 90,000 & < 120,00

select firstname, lastname, Description, salary
from job
join employee
on employee.jobid = job.id
where salary > 90000 and salary < 120000;


-- change to < 85,000 and 115,000
-- change to <= 80,000 and 110,000
-- more convenient to use PARAMETIZED QUERIES that will allow you to use variables

-- *** PARAMETIZED QUERIES ***
-- Form of scripting / Sctipting is specific to the db it's used in / 



select firstname, lastname, Description, salary  -- / WITHOUT PARAMETIZED QUERIES
from job
join employee
on employee.jobid = job.id
where salary >= 85000 and salary < 115000;


-- parameterized query
--Variable must start with '@' / Put blank line between Declaration should be 2 lines above query
DECLARE @LowSalary int
DECLARE @HighSalary int

SET @LowSalary = 80000;
SET @HighSalary = 120000;


select firstname, lastname, Description, salary  -- / WITH PARAMETIZED QUERIES
from job
join employee
on employee.jobid = job.id
where salary >= @LowSalary and salary < @HighSalary;


-- ALL Employees with President title
select firstname, lastname, Description, salary  -- / WITHOUT PARAMETIZED QUERIES
from job
join employee
on employee.jobid = job.id
where description = 'President';

-- parameterized query
DECLARE  @JobDescription nvarchar(50) = 'President';  -- / nvarchar - variable (#) of characters.  / variable will allow it to exclude empty characters 
									-- / 'n' means that each character could hold any number of possible character symbols including international
select firstname, lastname, Description, salary  -- / WITH PARAMETIZED QUERIES
from job
join employee
on employee.jobid = job.id
where description = @JobDescription;

-- change to Director

DECLARE @JobDescription nvarchar(50) = 'Director'; 

select firstname, lastname, Description, salary  -- / Must comment out the above query to run this because the variable cant be declared twice
from job
join employee
on employee.jobid = job.id
where description = @JobDescription;



