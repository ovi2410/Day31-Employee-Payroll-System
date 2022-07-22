--UC-1 creating database
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


