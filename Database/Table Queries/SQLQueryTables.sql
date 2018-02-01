create table Category_OIMS
(
   CategoryId int primary key identity(101,1),
   CategoryName varchar(50)not null,
   Description varchar(150)not null
);

Create table Product_OIMS
(
ProductId int primary key identity(1001,1),ProductName varchar(50)not null,
UnitType varchar(20)not null,Price int not null, CategoryId int foreign key references Category_OIMS(CategoryId)not null,Description varchar(150)
);

drop table Product_OIMS

Create table Customer_OIMS
(
CustomerId int primary key identity(2001,1),CustomerName varchar(20) not null,
Contact varchar(15) not null,Email varchar(30),Addresses varchar(60)not null,
City varchar(30),Pincode varchar(10)not null
)

Create table Order_OIMS
(
OrderId int primary key identity(10001,1),OrderDate date not null,
CustomerId int foreign key references Customer_OIMS(CustomerId) not null,
Amount varchar(20) not null
);

Create Table OrderDetails_OIMS
(
OrderId int,ProductId int,UnitPrice varchar(20),Quantity varchar(20)
);


Create table Users_OIMS
(
ID int primary key identity(1,1),Username varchar(20) not null,Password varchar(30) not null,Status varchar(20) not null
);