﻿--UC-1 creating database
create database EmployeeServices;              --creating database
select name from sys.databases                 -- Display all databases
use EmployeeServices                            -- Selecting database to throw queries

--UC-2 creating Table
create Table empoyee_payrolls
(
id int identity(1,1) primary key,              --declaring variables
name varchar(200) not null,
salary float,
startDate date
)

--UC-3 Insert values in Table
Insert into empoyee_payrolls(name,salary,startDate) values
('shalini',20000,'2021-03-12'),
('Magesh',25000,'2021-04-18'),                 --inserting record in table
('Gayathri',10000,'2020-05-13'),
('Aruna',30000,'2020-08-19');


--UC-4 Retrieve All data--
select * from empoyee_payrolls;               -- Retriving all the record from table table and Display them

------- UC 5: Select Query using Cast() an GetDate() -------
select salary from empoyee_payrolls where name='Magesh';
select salary from empoyee_payrolls where startDate BETWEEN Cast('2020-12-20' as Date) and GetDate();

------- UC 6: Add Gender Column and Update Table Values -------
Alter table empoyee_payrolls
add Gender char(1);

Update empoyee_payrolls 
set Gender='M'
where name='Magesh';
Update empoyee_payrolls 
set Gender='F'
where name='Gayathri' or name='Shalini'or name='Aruna';
select * from empoyee_payrolls; 

------- UC 7: Use Aggregate Functions and Group by Gender -------

select Sum(salary) as "TotalSalary",Gender from empoyee_payrolls group by Gender;
select Avg(salary) as "AverageSalary",Gender from empoyee_payrolls group by Gender;
select Min(salary) as "MinimumSalary",Gender from empoyee_payrolls group by Gender;
select Max(salary) as "MaximumSalary",Gender from empoyee_payrolls group by Gender;
select count(salary) as "CountSalary",Gender from empoyee_payrolls group by Gender;  

         ------- UC 8: Add column department,PhoneNumber and Address -------
Alter table empoyee_payrolls
add EmployeePhoneNumber BigInt,EmployeeDepartment varchar(200) not null default 'Publish',Address varchar(200) default 'Not Provided';

Update empoyee_payrolls
set EmployeePhoneNumber='9842905050',EmployeeDepartment='Editing',Address='Bangalore,Karnataka'
where name='Shalini';

Update empoyee_payrolls 
set EmployeePhoneNumber='10987252525',Address='Arizona,US'
where name ='Magesh';

Update empoyee_payrolls
set EmployeePhoneNumber='9600054540',EmployeeDepartment='Management',Address='Chennai,TN'
where name ='Gayathri';

Update empoyee_payrolls 
set EmployeePhoneNumber='8715605050',Address='Bareilly,UP'
where name ='Aruna';   
