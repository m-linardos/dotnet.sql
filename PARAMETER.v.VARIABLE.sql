--		***	PARAMETER V. VARIABLE ***


CREATE PROCEDURE ABC
	@parm1 int	-- PARAMETER
as
begin
	declare @var1 int;
end



declare @minsalary decimal(9,2) = 100000;   -- VARIABLE

select * from job where salary >= @minsalary;	-- SELECT STATEMENT USING VARIABLE    /    must execute the declaration and select statement at the same time