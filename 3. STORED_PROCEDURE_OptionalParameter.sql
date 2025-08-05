--optional Parameter--

create procedure OptionalParameter (
					@empID int = null
					)
as
begin

if isnull(@empID,'') = ''
begin
		select a.E_name,b.Age,a.Salary
		from Employee a
		inner join PERSONS b on a.ID=b.Personid
end
	else 
		begin
				select a.E_name,b.Age,a.Salary
				from Employee a
				inner join PERSONS b on a.ID=b.Personid
				where a.ID = @empID
		end
end
GO
--execution
exec OptionalParameter 3

exec OptionalParameter @empID = null