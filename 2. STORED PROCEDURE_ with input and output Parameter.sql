use practice_db

select * from Employee
select * from PERSONS
select * from int_orders
--with parameter STORED PROCEDURE
create procedure WithParameter (@empID int)
as
begin
select a.E_name,b.Age,a.Salary
from Employee a
inner join PERSONS b on a.ID=b.Personid
where a.ID = @empID
end

exec WithParameter 3

exec WithParameter @empID = 2