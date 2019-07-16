-- LIST of all jobs that make less that 100,000


SELECT * From Job
	Where salary < 100000;



-- List jobs > 95000     &     < 120,000

SELECT * From Job
	Where salary > 95000 and salary < 120000;




	-- List jobs > 95000     OR     < 120,000

SELECT * From Job
	Where salary > 95000 OR salary < 120000;