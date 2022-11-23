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
start_data date,
primary key(id)
);
