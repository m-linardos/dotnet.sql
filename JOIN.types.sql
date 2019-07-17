-- * Add role Asst. Supervisor to Description column of job table *



-- Inner Join

select firstname, lastname, Description, salary
from employee
join job
on employee.jobid = job.id
order by Description;

-- Left Join (Outer Join) / List all jobs.  If employee assigned, list employee.

select firstname, lastname, Description, salary
from job
Left join employee
on employee.jobid = job.id
order by Description;


-- only for Asst. Supervisor  /  Asst. Supervisor is Null

select firstname, lastname, Description, salary
from job
Left join employee
on employee.jobid = job.id
where description = 'Asst.Supervisor'
order by Description;


-- change to join   /   no result set

select firstname, lastname, Description, salary
from job
join employee
on employee.jobid = job.id
where description = 'Asst.Supervisor'
order by Description;


-- UNION
-- (ONLY FOR THIS QUERY, NOT CHANGING DATABASE)
-- create query to add a column to result set.  New column Senior Exec. (given to all Presidents & VPs).   /  All above columns plus Senior Exec. that is Y or N.

select firstname, lastname, Description, salary, 'Yes' as 'SR. EXEC.'
from job
join employee
on employee.jobid = job.id
where description = 'President' OR  description = 'VP'
--order by Description;

UNION

Select firstname, lastname, Description, salary, 'No' as 'SR. EXEC.'
from job
join employee
on employee.jobid = job.id
where Not (description = 'President' OR description = 'VP')
order by salary;


-- CROSS JOIN / RARELY USED 
-- Generates a lot of records


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


select firstname, lastname, Description, salary  -- / WITHOUT PARAMETIZED QUERIES
from job
join employee
on employee.jobid = job.id
where salary >= @LowSalary and salary < @HighSalary;

