




--CREATE DATABASE BootcampDb;		/		COMMENT OUT 'CREATE DATABASE'
/*
CREATE TABLE Students
(
Id int not null primary key identity(1, 1),
FirstName nvarchar(30) not null,
LastName nvarchar(50) not null,
Email nvarchar(255) null,											-- / null is default and optional to code 
Phone nvarchar(10)null,												-- / use nvarchar because it doesnt need to be mathematically manipulated 
DateEnrolled DateTime not null default getdate()					-- most used type of Date
);

INSERT into Students (FirstName, LastName)
	VALUES ('Jane', 'Doe');
*/


select * from Students; 

/*
INSERT into Students (FirstName, LastName)
	VALUES ('Alex', 'Chan');
	INSERT into Students (FirstName, LastName)
	VALUES ('Brailee', 'Begley');
	INSERT into Students (FirstName, LastName)
	VALUES ('Briana', 'Presley');
	INSERT into Students (FirstName, LastName)
	VALUES ('Glenn', 'Lindmark');
	INSERT into Students (FirstName, LastName)
	VALUES ('Jesse', 'Kyle');
	INSERT into Students (FirstName, LastName)
	VALUES ('Maggie', 'Schutzman');
	INSERT into Students (FirstName, LastName)
	VALUES ('Marianne', 'Linardos');
	INSERT into Students (FirstName, LastName)
	VALUES ('Titus', 'Moore');
	*/



	


	CREATE TABLE Bootcamps
	(Id int not null primary key identity(1, 1),
	Description nvarchar(80) 	not null
	);



	INSERT into Bootcamps (Description) VALUES ('.Net');
	INSERT into Bootcamps (Description) VALUES ('Java');



	select * from Bootcamps; 



	ALTER TABLE Students								-- HAVE TO REPEAT THIS BLOCK FOR EACH COLUMN YOU ARE ADDING
		Add BootcampId int
			foreign key references Bootcamps(Id);




UPDATE Students																			-- COULD CREATE STORED PROCEDURE TO DO THIS
SET BootcampId = (SELECT id from booTcamps where description like '%java%')
WHERE Lastname = 'Doe';

UPDATE Students
SET BootcampId = (SELECT id from booTcamps where description like '%net%')
WHERE Lastname <> 'Doe';	


ALTER TABLE STUDENT
ALTER COLUMN
ALTER INT BOOTCAMPID



/*****  create assessments table  *****
--***********************************
pk id
technology  nvarchar(50)   git, sql, c#, JS, Angular
number of questions  int   5,	10,	 10, 10, 10
*/


/*
CREATE TABLE Assessments (
Id int not null primary key identity(1, 1),
Technology nvarchar(50) not null,
NbrQuestions int not null
);

INSERT into Assessments (Technology, NbrQuestions) VALUES ('Git', 5);
INSERT into Assessments (Technology, NbrQuestions) VALUES ('SQL', 10);
INSERT into Assessments (Technology, NbrQuestions) VALUES ('C#', 10);
INSERT into Assessments (Technology, NbrQuestions) VALUES ('JavaScript', 10);
INSERT into Assessments (Technology, NbrQuestions) VALUES ('Angular', 10);
*/


--   OR


/*
CREATE TABLE Assessments (
Id int not null primary key identity(1, 1),
Technology nvarchar(50) not null,
NbrQuestions int not null default 10
);

INSERT into Assessments (Technology, NbrQuestions) VALUES ('Git', 5);
INSERT into Assessments (Technology) VALUES ('SQL');
INSERT into Assessments (Technology) VALUES ('C#');
INSERT into Assessments (Technology) VALUES ('JavaScript');
INSERT into Assessments (Technology) VALUES ('Angular');
*/

SELECT * FROM Assessments;

/*****  create AssessmentScores table  *****
--***********************************
pk id
fk StudentId
fk AssessmentId
how many questions correct
*/

/*
CREATE TABLE AssessmentScores (
Id int not null primary key identity(1, 1),
StudentId int not null foreign key references Students(id),
AssessmentId int not null foreign key references Assessments(id),
NbrCorrect int not null,												-- record of each test entered after test
);
*/

/*****  INSERT JANE DOE SCORES  *****
--***********************************/
/*INSERT INTO AssessmentScores (StudentId, AssessmentId, NbrCorrect) VALUES (1,1,6)			-- GIT SCORE
INSERT INTO AssessmentScores (StudentId, AssessmentId, NbrCorrect) VALUES (1,2,9)			-- SQL
INSERT INTO AssessmentScores (StudentId, AssessmentId, NbrCorrect) VALUES (1,3,10)			-- C#/JAVA
INSERT INTO AssessmentScores (StudentId, AssessmentId, NbrCorrect) VALUES (1,4,7)			-- JAVASCRIPT
INSERT INTO AssessmentScores (StudentId, AssessmentId, NbrCorrect) VALUES (1,5,11)			-- ANGULAR
GO
*/


/*****  LIST ALL ASSESSMENTS TAKEN AND HOW MANY CORRECT  *****
--************************************************************/


--- step 1

SELECT Students s
join AssessmentScores sc
on s.id = sc.StudentId
join Assessments a
on a.id = sc.AssessmentId
WHERE s.id = 1;




--- step 2

SELECT Students s
join AssessmentScores sc
on s.id = sc.StudentId
join Assessments a
on a.id = sc.AssessmentId
join Bootcamps b
on b.id = s.BootcampID
WHERE s.id = 1;



--- step 3 / REMOVE UNWANTED COLUMNS AND ORGANIZE THE COLUMNS AS WANTED

SELECT CONCAT(LastName, ',', Firstname) as 'Name', Description as 'bootcamp', Technology as 'Assessment', NbrCorrect,		-- CAST TO GET PERCENT OF EACH NUMBER AND RESULTING SCORE
			NbrQuestions, CAST(((CAST(NbrCorrect as decimal) / CAST(NbrQuestions as decimal)) * 100) as int) as 'Score'
	from Students s
	join AssessmentScores sc
	on s.id = sc.StudentId
	join Assessments a
	on a.id = sc.AssessmentId
	join Bootcamps b
	on b.id = s.BootcampID
WHERE s.id = 1;








SELECT * FROM Assessments;
select * from Bootcamps; 
select * from Students; 



















	--DR--Updated table with more info   /      ********  USE UPDATE
	
/*	DECLARE @email nvarchar(50);
	declare @phone nvarchar(10);
	declare @name nvarchar(10);

	set @email = 'frozenchanana@gmail.com'	;
	set @phone = '513-560-5531'	;
	set @name =	'Alex'	;


	UPDATE Students 
	SET Email = @email, phone = @phone
	where Firstname = @name;	
	
*/	

	

	UPDATE Students 
	SET Phone = '513-560-5531'
	where Firstname = 'Alex');
	
	
	INSERT into Students (Email, Phone)
	VALUES ('brail33na11@gmail.com', '513-435-1173')
	where Firstname = 'Brailee');

	INSERT into Students (Email, Phone)
	VALUES ('presley.briana@gmail.com', '513-254-9807')
	where Firstname = 'Briana');

	INSERT into Students (Email, Phone)
	VALUES ('lindmark421@gmail.com', '513-484-9323')
	where Firstname = 'Glenn');

	INSERT into Students (Email, Phone)
	VALUES ('jkylecapentry@gmail.com', '513-655-1990')
	where Firstname = 'Jesse');

	INSERT into Students (Email, Phone)
	VALUES ('maggieschutzman2@gmail.com', '859-479-7837')
	where Firstname = 'Maggie');


	INSERT into Students (Email, Phone)
	VALUES ('marianneklinardos@gmail.com', '513-785-8178');
	where Firstname = 'Marianne');

	INSERT into Students (Email, Phone)
	VALUES ('tmoore@gmail.com', '937-474-1083');
	where Firstname = 'Titus');



	P TABLE Bootcamps;