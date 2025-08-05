use practice_db

select * from Employees
select * from Employee
--without parameter Stored Procedure

create procedure WithoutParameter
as
begin
select A.EmployeeID,A.Firstname,A.Department,A.Salary,B.Age
from Employees A
inner join Employee B
on A.EmployeeID=B.ID
end
--To Execution the query
exec WithoutParameter
--To see the procedure code during create
sp_helptext WithoutParameter

drop proc WithoutParameter

