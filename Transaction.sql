

begin transaction;

insert into job (Description, Salary) values ('TEST', 1000000);

ROLLBACK TRANSACTION;

SELECT * FROM Job ORDER BY ID DESC;