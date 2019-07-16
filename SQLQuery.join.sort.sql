-- (Greg's notes) Join view 
-- sorting by salary and lastname




-- select statement to show result: JohnAdams 90000

SELECT Firstname, Lastname, Description, Salary 
FROM Employee
JOIN JOB
	on JobId = Job.Id;
order by salary desc;


-- display lastname, firstname  /CONCATONATE

SELECT CONCAT(Lastname, ', ', Firstname), Description, Salary
From Employee
Join Job
	on JobId = Job.ID
order by salary desc;

-- create alias for concatonated column

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, Salary
From Employee
Join Job
	on JobId = Job.ID
order by salary desc;


-- order by Lastname, not salary (can use Name or Lastname)

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, Salary
From Employee
Join Job
	on JobId = Job.ID
order by Name;


-- order by first name 

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, Salary
From Employee
Join Job
	on JobId = Job.ID
order by Firstname;



-- format number currency sql server/ Microsoft reference FORMAT(EndOfDayRate, 'C', 'en-us') AS 'Currency Format'

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
	FORMAT(Salary, 'c') as 'Salary'
From Employee
Join Job
	on JobId = Job.ID
order by Firstname;



-- 1) order by salary desc

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
	FORMAT(Salary, 'c') as 'Salary'
From Employee
Join Job
	on JobId = Job.ID
order by job.Salary desc;


-- 2) order by salary desc & name desc

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
	FORMAT(Salary, 'c') as 'Salary'
From Employee
Join Job
	on JobId = Job.ID
order by job.Salary desc, name desc; -- WHAT IS THE DIFFERENCE IN HOW DISPLAYED  (071519 1st section of lunch recording)


-- 




-- only employees with lastname 'smith'

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
	FORMAT(Salary, 'c') as 'Salary'
From Employee
Join Job
	on JobId = Job.ID
	--Where Lastname = 'Smith'
order by Firstname;


