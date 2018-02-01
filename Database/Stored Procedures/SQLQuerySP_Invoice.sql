create proc USP_Insert_Invoice_OIMS
(
@InvoiceIdP int,
@OrderIdP int,
@InvoiceDateP date
)
as
begin
insert into Invoice_OIMS values (@OrderIdP,@InvoiceDateP)
End


create proc USP_Delete_Invoice_OIMS
(
@InvoiceIdP int,
@OrderIdP int,
@InvoiceDateP date
)
as
begin
delete from Invoice_OIMS where InvoiceId=@InvoiceIdP
End

create proc USP_Update_Invoice_OIMS
(
@InvoiceIdP int,
@OrderIdP int,
@InvoiceDateP date
)
as
begin
Update Invoice_OIMS set OrderId=@OrderIdP,InvoiceDate=@InvoiceDateP where InvoiceId=@InvoiceIdP
End


create proc USP_Search_Invoice_OIMS
(
@InvoiceIdP int,
@OrderIdP int,
@InvoiceDateP date
)
as
begin
select * from Invoice_OIMS where InvoiceId= @InvoiceIdP or OrderId=@OrderIdP
End

