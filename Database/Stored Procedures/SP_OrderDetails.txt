create proc USP_Insert_OrderDetails_OIMS
(
@OrderIdP int,
@ProductIdP int,
@UnitPriceP int,
@QuantityP int
)
AS
BEGIN
insert into OrderDetails_OIMS values(@OrderIdP,@ProductIdP,@UnitPriceP ,@QuantityP )
END


create proc USP_Delete_OrderDetails_OIMS
(
@OrderIdP int,
@ProductIdP int,
@UnitPriceP int,
@QuantityP int
)
AS
BEGIN
delete from OrderDetails_OIMS where OrderId=@OrderIdP
END


create proc USP_Update_OrderDetails_OIMS
(
@OrderIdP int,
@ProductIdP int,
@UnitPriceP int,
@QuantityP int
)
AS
BEGIN
update OrderDetails_OIMS set UnitPrice=@UnitPriceP ,Quantity=@QuantityP where OrderId=@OrderIdP and ProductId=@ProductIdP
END


create proc USP_Search_OrderDetails_OIMS
(
@OrderIdP int,
@ProductIdP int,
@UnitPriceP int,
@QuantityP int
)
AS
BEGIN
select * from OrderDetails_OIMS where OrderId=@OrderIdP or ProductId=@ProductIdP
END
