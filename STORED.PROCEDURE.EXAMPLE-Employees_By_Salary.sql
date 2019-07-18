/** STORED PROCEDURE EXAMPLE  **/
mployees displayed based on enduser entry of number get greater than the number  **/
-- SEE 7/18 VID @ 3:02




CREATE PROCEDURE Emplyees_By_Salary
	@search int
AS
BEGIN
	SELECT CONCAT(e.Lastname, ',', e.Firstname) as 'Name', 
			j.Description as 'Job', FORMAT(J.Salary, 'C') as Salary
		FROM Employee e
		JOIN Job j
			on j.Id = e.JobId
	WHERE Salary > @search   -- / Specifics for @search (added)
	ORDER BY Name;
