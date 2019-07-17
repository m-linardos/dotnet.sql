-- ** LIKE **
-- '%' means zero or more characters
-- '_' means exactly one character


-- Change to any Job with Director in title

DECLARE @JobDescription nvarchar(50) = '%Director%'; 

select firstname, lastname, Description, salary  -- / Must comment out the above query to run this because the variable cant be declared twice
from job
join employee
on employee.jobid = job.id
where description LIKE @JobDescription;


-- 
DECLARE @JobDescription nvarchar(50) = '%ss%'; 

select firstname, lastname, Description, salary  -- / Must comment out the above query to run this because the variable cant be declared twice
from job
join employee
	on employee.jobid = job.id
where description LIKE @JobDescription;


-- find all employees with 3 letter first names
DECLARE @Search nvarchar(50) = '___'; 

select firstname, lastname, Description, salary  
from job
join employee
	on employee.jobid = job.id
where firstname LIKE @Search;



				
