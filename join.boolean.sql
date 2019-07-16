--  JOIN & BOOLEANS


SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
order by job.salary desc, name desc;





-- and   
where job is VP
SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
Where Description = 'VP'
order by job.salary desc, name desc;



-- or   where job is not VP
SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
Where Description = 'VP'
order by job.salary desc, name desc;


-- or   where job is not VP   OR   salary more than 10000

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
Where (Description = 'VP') or (Salary > 100000)
order by job.salary desc, name desc;



-- or   where job is VP   AND   salary more than 10000

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
Where (Description = 'VP') AND (Salary > 100000)
order by job.salary desc, name desc;



-- or   where job is not VP   AND   salary more than 10000

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
Where NOT ((Description = 'VP') AND (Salary > 100000))
order by job.salary desc, name desc;



-- or   where job is not VP   OR   salary more than 10000

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
		FORMAT(Salary, 'C') as 'Salary'
From Employee
Join Job
	on JobId = Job.Id
Where NOT ((Description = 'VP') OR (Salary > 100000))
order by job.salary desc, name desc;

