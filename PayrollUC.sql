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

/*UC-4_Retrieve all date from table*/
select * from employee_payroll;

/*UC-5_Retrieve data from particular employee*/
select * from employee_payroll where name='Karan';

select * from employee_payroll
WHERE startdate BETWEEN CAST('01/01/2015'
AS DATE) AND GETDATE();

/*UC-6_Add Gender column to table employee_payroll*/
alter table employee_payroll add  gender varchar(255);

update employee_payroll set gender='Male' where name='Karan';
update employee_payroll set gender='Male' where name='Sagar';
update employee_payroll set gender='Male' where name='Bhavesh';
update employee_payroll set gender='Female' where name='Ruchi';
update employee_payroll set gender='Female' where name='Prajakta';
update employee_payroll set gender='Female' where name='Rutuja';

/*UC-7_Use aggregate functions */
select gender ,sum(salary) from employee_payroll where gender='Female' group by gender;
select gender ,sum(salary) from employee_payroll where gender='Male' group by gender;

select gender ,avg(salary) from employee_payroll where gender='Female' group by gender;
select gender ,avg(salary) from employee_payroll where gender='Male' group by gender;

select gender ,min(salary) from employee_payroll where gender='Female' group by gender;
select gender ,min(salary) from employee_payroll where gender='Male' group by gender;

select gender ,max(salary) from employee_payroll where gender='Female' group by gender;
select gender ,max(salary) from employee_payroll where gender='Male' group by gender;

select gender ,count(salary) from employee_payroll where gender='Female' group by gender;
select gender ,count(salary) from employee_payroll where gender='Male' group by gender;

/*UC-8_Extend table to given format*/
select * from employee_payroll;

alter table employee_payroll
drop column gender;

alter table employee_payroll
drop column startdate;

alter table employee_payroll
drop column salary;

alter table employee_payroll
add phone_number int default 0;

alter table employee_payroll
add address varchar(255) default 0;

UPDATE employee_payroll SET address = 'Mumbai' WHERE name IN ('Karan', 'Sagar');
UPDATE employee_payroll SET address = 'Delhi' WHERE name IN ('Bhavesh', 'Ruchi');
UPDATE employee_payroll SET address = 'Chicago' WHERE name IN ('Prajakta', 'Rutuja');

alter table employee_payroll
add department varchar(255) default 0;

select * from employee_payroll;

UPDATE employee_payroll SET department = 'Backend' WHERE name IN ('Karan', 'Sagar');
UPDATE employee_payroll SET department = 'Frontend' WHERE name IN ('Bhavesh', 'Ruchi');
UPDATE employee_payroll SET department = 'Finance' WHERE name IN ('Prajakta', 'Rutuja');

alter table employee_payroll
add gender varchar(255) default 0;

UPDATE employee_payroll SET gender = 'Male' WHERE name IN ('Karan', 'Sagar');
UPDATE employee_payroll SET gender='Male' where name='Bhavesh';
UPDATE employee_payroll SET gender='Female' where name='Ruchi';
UPDATE employee_payroll SET gender = 'Female' WHERE name IN ('Prajakta', 'Rutuja');

UPDATE employee_payroll SET basic_pay = '50000' WHERE name IN ('Karan', 'Sagar');
UPDATE employee_payroll SET basic_pay = '55000' WHERE name IN ('Bhavesh', 'Ruchi');
UPDATE employee_payroll SET basic_pay = '40000' WHERE name IN ('Prajakta', 'Rutuja');

select * from employee_payroll;

alter table employee_payroll
drop column deductions;

alter table employee_payroll
add taxable_pay int not null default(0);

alter table employee_payroll
add tax int not null default(0);

alter table employee_payroll
add net_pay int not null default(0);

alter table employee_payroll
add start datetime not null default('08/02/2021');