
/******   INSERT   ******/


/*** Script for SelectTopRows command from SSMS ***/


Select TOP (1000) [Id],					-- / FORM
	[Description],
	[Salary]
From [EmploymentDb].[dbo].[Job]



INSERT into Job							-- / EXAMPLE
	(Salary, Description)
	values (50000, 'Admin to President');

-- Add Assistant 
	INSERT into Job							-- / EXERCISE
	(Salary, Description)
	values (50000, 'Asst. to President');


	-- Add Foreman at 53000
	INSERT into Job							-- / EXERCISE
	(Salary, Description)
	values (53000, 'Foreman');


	-- Add Parameterized Insert statement for Asst. Foreman at 35000
	Declare @JobDescription nvarchar(30) = 35000;
	Declare @YearSalary nvarchar(10) = 'Asst. Foreman';		-- / EXERCISE

	INSERT into Job							
	(Salary, Description)
	values (@JobDescription, @YearSalary); 


	-- Add Parameterized Insert statement for Asst. VP at 130000
	Declare @JobDescription nvarchar(30) = 130000;			-- / EXERCISE				
	Declare @YearSalary nvarchar(10) = 'AVP';				-- / Must comment out the above query to run this because the variable cant be declared twice

	INSERT into Job							
	(Salary, Description)
	values (@JobDescription, @YearSalary);



	INSERT into Employee									-- / EXAMPLE
	(Lastname, Firstname, JobId)
	values ('Chan', 'Alexx', 1);


	INSERT into Employee									-- / EXAMPLE
	(Lastname, Firstname, JobId)
	values ('Brown', 'Charlie', 99);


	-- Add 3 employees

	INSERT into Employee									-- / EXAMPLE
	(Lastname, Firstname, JobId)
	values ('Hitchcock', 'Alfred', 3);

	INSERT into Employee									-- / EXAMPLE
	(Lastname, Firstname, JobId)
	values ('Mayar', 'Oscar', 5);

	INSERT into Employee									-- / EXAMPLE
	(Lastname, Firstname, JobId)
	values ('Mcren', 'Alice', 2);


	INSERT into Employee (Lastname, Firstname, JobId) values ('Craig', 'Donald', 1);					-- / EXAMPLE
	INSERT into Employee (Lastname, Firstname, JobId) values ('Lisbon', 'Alicia', 2);	
	INSERT into Employee (Lastname, Firstname, JobId) values ('Alexander', 'Rich', 3);	
	INSERT into Employee (Lastname, Firstname, JobId) values ('Archibold', 'King', 3);	
	INSERT into Employee (Lastname, Firstname, JobId) values ('Little', 'BigTom', 4);	