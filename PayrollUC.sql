/*UC-1_Create database!!*/
create database payroll_service;
SELECT name FROM master.sys.databases
use payroll_service;

/*UC-2_Create Table employee_payroll*/
create table employee_payroll(
id int identity(1,1) primary key,
name varchar(255),
salary int,
startdate datetime);
select * from employee_payroll;