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
insert into employee_payroll (name,salary,start_date) values("Manoj",28000,'2019-01-01'),("Prem",38000,'2020-08-23');

/* Show table */
Select * from employee_payroll;

Select * from employee_payroll where name = "Nagraj";
Select * from employee_payroll where start_date BETWEEN CAST('2018-01-01'AS DATE) AND DATE(NOW());
/*Add Column*/
alter table employee_payroll add gender varchar(20) after start_date;
/*Update gender*/
update employee_payroll set gender = "male";
/* Aggregate Functions*/
Select min(id),max(id),avg(id),count(id),sum(id) 
from employee_payroll where gender = "male"
group by gender; 
/*ER Diagram */

alter table employee_payroll add phone int after gender;
alter table employee_payroll add address varchar(40) after phone;
alter table employee_payroll add department varchar(30) after address;
alter table employee_payroll modify department varchar(30) not null;
alter table employee_payroll modify address varchar(40) default 'Bengaluru';






