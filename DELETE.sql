select * from job

/***   DELETE   ***/

delete from job where id = 1;		 

DELETE FROM JOB;					-- DELETES WHOLE TABLE


/** RECOMMENDED APROACH  /  
1) 'SELECT' IN PLACE OF WORD 'DELETE' TO MAKE SURE YOU ARE Use WHERE and PK 
2) CONFIRM CORRECT INFO
3) CHANGE 'SELECT' TO 'DELETE'   **/

SELECT * FROM JOB WHERE ID IN (1,3,5,7,9);  -- CONFIRM 
DELETE * FROM JOB WHERE ID IN (1,3,5,7,9);


-- EXERCISE - 

SELECT firstname, lastname, description
from employee
join job
	on job.Id = employee.JobId
where Description = 'Asst. Director';



-- 1) Select to see orig (comment out delete)
select from job
--delete from job 
where Id = (select id from job where Description = 'Asst Director');

-- 2) delete	(comment out select)
--select from job
delete from job
where Id = (select id from job where Description = 'Asst Director');

-- 3) Select to see UPDATED info (comment out SELECT)
select from job
--delete from job 
where Id = (select id from job where Description = 'Asst Director');