create proc USP_Insert_Customer_OIMS
(
@CustomerIdP int,
@CustomerNameP varchar(20),
@ContactP varchar(15),
@EmailP varchar(30),
@AddressP varchar(60),
@CityP varchar(30),
@PincodeP varchar(10)
)
as
begin
insert into Customer_Invoice values (@CustomerIdP,@CustomerNameP,@ContactP,@EmailP,@AddressP,@CityP,@PincodeP)
End

create proc USP_Delete_Customer_OIMS
(
@CustomerIdP int
)
as
begin
delete from Customer_Invoice where CustomerId = @CustomerIdP
end


create proc USP_Update_Customer_OIMS
(
@CustomerIdP int,
@CustomerNameP varchar(20),
@ContactP varchar(15),
@EmailP varchar(30),
@AddressP varchar(60),
@CityP varchar(30),
@PincodeP varchar(10)
)
as
begin
Update Customer_Invoice set CustomerName=@CustomerNameP,Contact=@ContactP,Email=@EmailP,Addresses=@AddressP,City=@CityP,Pincode=@PincodeP where CustomerId = @CustomerIdP

end

create proc USP_Search_Customer_OIMS
(
@CustomerIdP int,
@CustomerNameP varchar(20)
)
as
begin
select * from Customer_Invoice where LOWER(CustomerName)= LOWER(@CustomerNameP) 
OR CustomerId= @CustomerIdP
end

