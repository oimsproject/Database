create proc USP_Insert_Product_OIMS
(
@ProductIdP int,
@ProductNameP varchar(50),
@UnitTypeP varchar(20),
@PriceP int,
@CategoryIdP int,
@DescriptionP varchar(150)
 
)
as
begin
insert into Product_OIMS values (@ProductNameP,@UnitTypeP,@PriceP,@CategoryIdP,@DescriptionP)
End 

create proc USP_Delete_Product_OIMS
(
@ProductIdP int,
@ProductNameP varchar(50),
@UnitTypeP varchar(20),
@PriceP int,
@CategoryIdP int,
@DescriptionP varchar(150)
)
as
begin
delete from Product_OIMS where ProductId =@ProductIdP
end

create proc USP_Search_Product_OIMS
(
@ProductIdP int,
@ProductNameP varchar(50),
@UnitTypeP varchar(20),
@PriceP int,
@CategoryIdP int,
@DescriptionP varchar(150)
)
as
begin
select * from Product_OIMS where LOWER(ProductName)= LOWER(@ProductNameP) 
OR ProductId= @ProductIdP
end

create proc USP_Update_Product_OIMS
(
@ProductIdP int,
@ProductNameP varchar(50),
@UnitTypeP varchar(20),
@PriceP int,
@CategoryIdP int,
@DescriptionP varchar(150)
)
as
begin
Update Product_OIMS set ProductName=@ProductNameP,UnitType=@UnitTypeP,Price=@PriceP,CategoryId=@CategoryIdP,Description=@DescriptionP where ProductId = @ProductIdP

end