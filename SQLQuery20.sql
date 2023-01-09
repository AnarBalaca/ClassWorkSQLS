Create Table Employee(
Employeeid int IDENTITY(1,1) PRIMARY KEY,
FirstName varchar(255),
SureName varchar(255),
 PositionId INT FOREIGN KEY REFERENCES Position(Id)

)

Create Table Position(
ID int IDENTITY(1,1) PRIMARY KEY,
PositionName varchar(255)

)

Create Table Filial(
Filialid int IDENTITY(1,1) PRIMARY KEY,
[Name] varchar(255)
)


Create Table Product(
Productid int IDENTITY(1,1) PRIMARY KEY,
[Name] varchar(255),
BuyingPrice Int Not NUll,
SellingPrice Int Not Null
)



--Drop Table Product
--Drop Table Position
--Drop Table Employee

--Drop Table Filial



alter VIEW SellingReport1 AS
select Em.Employeeid ,em.FirstName, SureName ,Position.PositionName
from Employee Em
Inner Join Position On Em.PositionId = Position.ID;

 
Select * From SellingReport1