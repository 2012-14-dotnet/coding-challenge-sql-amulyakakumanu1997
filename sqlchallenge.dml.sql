using challengedb;
insert into Employee.Department(Name, Location)
    values('Human Resources Department', 'Minnesota')
insert into Employee.Department(Name, Location)
    values('IT Department', 'California')
insert into Employee.Department(Name, Location)
    values('Marketing Department', 'New York')

insert into Employee.Employee(FirstName,LastName,SSN,DeptID)
    values('Amulya', 'Kakumanu', '00011100011', 1)

insert into Employee.Employee(FirstName,LastName,SSN,DeptID)
    values('Mary', 'Johnson', '12345670255', 2)

insert into Employee.Employee(FirstName,LastName,SSN,DeptID)
    values('Tina', 'Smith', '34512931200', 3)

insert into Employee.EmpDetails(EmployeeID, Salary, Address_1, Address_2, City, State, Country)
  values(1,10000,'Address','Address Again','Minneapolis','Minnesota','United States');
insert into Employee.EmpDetails(EmployeeID, Salary, Address_1, Address_2, City, State, Country)
  values(2,10000,'Address','Address Again','Albany','New York','United States');
insert into Employee.EmpDetails(EmployeeID, Salary, Address_1, Address_2, City, State, Country)
  values(3,50000,'Address','Address Again','Sacramento','California','United States');

Select * from Employee.Employee;

Select * from Employee.Employee;
    where DeptID = 3;

Update Employee.EmpDetails
    set Salary = 90000
    where ID = 3;