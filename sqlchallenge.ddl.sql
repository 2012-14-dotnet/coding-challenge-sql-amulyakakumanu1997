create challengdb;

use challengedb;
go

create Schema Employee;
go

create table Employee.Department
{
    ID int null identity (1,1)
    Name nvarchar(250) null, 
    Location nvarchar(250)
};

create table Employee.EmpDetails
{
    ID int not null identity(1,1) primary key,
    EmployeeID int not null,
    Salary money null,
    Address_1 VARCHAR(255) null,
    Address_2 VARCHAR(255) null,
    City varchar(100) null,
    State varchar(50) null,
    Country varchar(100) null
};

create tabl Employee.Employee
{
    ID int not null identity(1,1) primary key,
    FirstName nvarchar(250) null,
    LastName nvarchar(250) null,
    SSN  varchar(11) null,
    DeptID int not null
};

go 

alter table Employee.Employee
    add constraint FK_DeptID foreign key (DeptID) references Employee.Department (ID);

alter table Employee.EmpDetails 
    add constraint FK_EmployeeID foreign key (DeptID) references Employee.Employee (ID);
