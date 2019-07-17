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
