--  ** IN **      / (used w/where) 

-- employees with last names being one of these: dalton Everington, Gatz, Ibanez, Johnson and Lincoln
select firstname, lastname, Description, salary  
from job
join employee
	on employee.jobid = job.id
Where lastname IN('Dalton', 'Everington', 'Gatz', 'Ibanez', 'Johnson', 'Lincoln');


-- employees with last names being one of these: dalton Everington, Gatz, Ibanez, Johnson and Lincoln & firstname of Amy
select firstname, lastname, Description, salary    -- / SQL will do whats in parens, take the answer and plug it in to the whole query
from job
join employee
	on employee.jobid = job.id
Where lastname in (
					select lastname from employee where firstname = 'Amy'
					);