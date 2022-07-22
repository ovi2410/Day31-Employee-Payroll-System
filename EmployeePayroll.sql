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

