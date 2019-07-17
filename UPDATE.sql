select * from job
select * from EMPLOYEE

/***   UPDATE   ***/												 -- / Tells how many rows have been updated


UPDATE <table> SET					-- FORM
	<column> = '    '
Where 



 UPDATE Employee SET					-- EXAMPLE
	Firstname = 'Gregory',
	Lastname = 'Doud',
	Salary = Salary*1.5
Where 


-- ****   EXERCISE   ****   - CHANGE EMPLOYEE NAME TO WILEY COYOTE  

-- 1) SELECT - to show original
-- 2) Update statement
-- 3) SELECT - to show updated information
-- 4) RUN ALL AT SAME TIME

SELECT * FROM EMPLOYEE WHERE ID = 9;	-- SHOW ORIG

UPDATE Employee SET						-- EXAMPLE
	Firstname = 'WILEY',
	Lastname = 'COYOTE'
Where Id = 9;

SELECT * FROM EMPLOYEE WHERE ID = 9;	-- TEST FOR UPDATED INFO


-- CAN ALSO WRITE LIKE THIS
SELECT * FROM EMPLOYEE WHERE ID = 9;	-- SHOW ORIG

UPDATE Employee SET						-- EXAMPLE
	Firstname = 'WILEY',
	Lastname = 'COYOTE'
Where Id = 9; SELECT * FROM EMPLOYEE WHERE ID = 9;	-- TEST FOR UPDATED INFO


-- ****    EXERCISE     *****   -  UPDATE all asst Directors to Director

-- 1) find ids for all Asst Directors(3 orig) and Directors(3 orig)
select e.id, firstname, lastname, jobid
from employee e													-- 'e' is alias for Employee table
where e.JobId = (select id from job where Description = 'Asst Director');

select e.id, firstname, lastname, jobid
from employee e													-- 'e' is alias for Employee table
where e.JobId = (select id from job where Description = 'Director');

-- 2) Update
UPDATE employee set
jobid = (select id from job where Description = 'Director')
where jobid = (select id from job where Description = 'Asst Director');


-- 2) TEST - Confirm change
select e.id, firstname, lastname, jobid
from employee e													-- 'e' is alias for Employee table
where e.JobId = (select id from job where Description = 'Asst Director');

select e.id, firstname, lastname, jobid
from employee e													-- 'e' is alias for Employee table
where e.JobId = (select id from job where Description = 'Director');
	




