-- Join view Employee/Job showing salary
-- sorting by salary and lastname
SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
order by job.salary desc, name desc;
