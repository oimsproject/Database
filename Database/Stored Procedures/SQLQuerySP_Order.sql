
create proc USP_Insert_Order_OIMS
(
@OrderDateP date,
@CustomerIdP int,
@AmountP int
)
as
begin
insert into Order_OIMS values (@OrderDateP,@CustomerIdP,@AmountP)
End

create proc USP_Delete_Order_OIMS
(
@OrderIdP int
)
as
begin
delete from Order_OIMS where OrderId =@OrderIdP
end


create proc USP_Update_Order_OIMS
(
@OrderIdP int,
@OrderDateP date,
@CustomerIdP int,
@AmountP int

)
as
begin
Update Order_OIMS set OrderDate=@OrderDateP,CustomerId=@CustomerIdP,Amount=@AmountP where OrderId = @OrderIdP

end


create proc USP_Search_Order_OIMS
(
@OrderIdP int
)
as
begin
select * from Order_OIMS where OrderId= @OrderIdP
end