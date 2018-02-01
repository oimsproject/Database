Select * from Users

create proc USP_Insert_Users_OIMS
(
@IDP int,
@UsernameP varchar(20),
@PasswordP varchar(30),
@StatusP varchar(20)
)
as
begin
insert into Users_OIMS values (@UsernameP,@PasswordP,@StatusP)
End


create proc USP_Delete_Users_OIMS
(
@IDP int

)
as
begin
delete from Users where ID =@IDP
end

create proc USP_Update_Users_OIMS
(
@IDP int,
@UsernameP varchar(20),
@PasswordP varchar(30),
@StatusP varchar(20)
)
as
begin
Update Users set Username=@UsernameP,Password=@PasswordP,Status=@StatusP where ID = @IDP

end

create proc USP_Search_Users_OIMS
(
@IDP int,
@UsernameP varchar(20),
@PasswordP varchar(30),
@StatusP varchar(20)
)
as
begin
select * from Users where ID= @IDP
end


