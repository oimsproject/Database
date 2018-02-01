create proc USP_Insert_Category_OIMS
(
@CategoryIdP int,
@CategoryNameP varchar(50),
@DescriptionP varchar(150)
)
as
begin
insert into Category_OIMS values (@CategoryNameP,@DescriptionP)
End 

alter proc USP_Delete_Category_OIMS
(
@CategoryIdP int,
@CategoryNameP varchar(50),
@DescriptionP varchar(150)
)
as
begin
delete from Category_OIMS where CategoryId =@CategoryIdP
end

alter proc USP_Search_Category_OIMS
(
@CategoryIdP int,
@CategoryNameP varchar(50),
@DescriptionP varchar(150)
)
as
begin
select * from Category_OIMS where LOWER(CategoryName)= LOWER(@CategoryNameP) 
OR CategoryId= @CategoryIdP
end

create proc USP_Update_Category_OIMS
(
@CategoryIdP int,
@CategoryNameP varchar(50),
@DescriptionP varchar(150)
)
as
begin
Update Category_OIMS set Description=@DescriptionP  ,CategoryName = @CategoryNameP where CategoryId = @CategoryIdP

end