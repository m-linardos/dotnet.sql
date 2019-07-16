-- * SUBSELECT *  All employees making more than avg salary of all employees

-- join

Select Firstname, lastname, job.description, job.salary 
from Employee
Join Job
on Job.Id = JobId;


-- avg salary of employee

Select avg(salary) 
from Employee
Join Job
on Job.Id = JobId;



-- employees with salary > 121346

Select Firstname, lastname, job.description, job.salary 
from Employee
Join Job
on Job.Id = JobId
Where salary > 121346;


-- SUBSELECT -  Add select statement into query instead of 121346.   Inner paren is evaluated first.
-- The subselect statement must have only   * 1 COLUMN *

Select Firstname, lastname, job.description, job.salary 
from Employee
Join Job
on Job.Id = JobId
Where salary > (	Select avg(salary) 
					from Employee
					Join Job
					on Job.Id = JobId
										 );


