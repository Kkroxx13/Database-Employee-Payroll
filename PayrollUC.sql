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

/*UC-3_Insert into employee_payroll table*/
insert into employee_payroll values(
'Karan',50000,'02/08/2021');

insert into employee_payroll values(
'Sagar',45000,'03/09/2020');

insert into employee_payroll values(
'Bhavesh',47000,'12/12/2002');

insert into employee_payroll values(
'Ruchi',55000,'08/22/2017');

insert into employee_payroll values(
'Prajakta',39000,'07/30/2020');

insert into employee_payroll values(
'Rutuja',30000,'12/25/2021');