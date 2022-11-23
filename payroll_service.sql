/* Create database payroll_service */
create database payroll_service;
/* show data base */
show databases;
/* use data base */
use payroll_service;
/* create Table Employee_Payroll */
create table employee_payroll (
id int auto_increment, 
name varchar(20),
salary int,
start_date date,
primary key(id)
);
/* Insert into employee_payroll */
insert into employee_payroll (name,salary,start_date) values("Nagraj",25000,'2018-01-01');

/* Show table */
Select * from employee_payroll;



