-- * List count of people in President job *

-- 1) count & group by description

SELECT Description, Count(*)
From Employee
Join Job
	on JobId = Job.Id
	Group by Description;



-- 2) and where job = President

SELECT Description, Count(*)
From Employee
Join Job
	on JobId = Job.Id
Where Description = 'President'	Group by Description;




-- * SUM Salary column as total salary*

SELECT Description, Count(*) as 'Count', sum(salary) as 'Total Salary'
From Employee
Join Job
	on JobId = Job.Id
	Group by Description;


-- WITH FORMATTING

SELECT Description, Count(*) as 'Count', FORMAT(sum(salary), 'c') as 'Total Salary'
From Employee
Join Job
	on JobId = Job.Id
	Group by Description;


-- ORDER BY Description

SELECT Description, Count(*) as 'Count', FORMAT(sum(salary), 'c') as 'Total Salary'
From Employee
Join Job
	on JobId = Job.Id
	Group by Description
	order by 'TOTAL SALARY';


-- all jobs where total salary is less than or equal 200,000 / HAVING

SELECT Description, Count(*) as 'Count', FORMAT(sum(salary), 'c') as 'Total Salary'
From Employee
Join Job
	on JobId = Job.Id
	Group by Description
	Having sum(salary) <= 250000
	order by 'TOTAL SALARY' desc;


