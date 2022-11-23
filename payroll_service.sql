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

alter table employee_payroll modify phone long after gender;
alter table employee_payroll add address varchar(40) after phone;
alter table employee_payroll add department varchar(30) after address;
alter table employee_payroll modify department varchar(30) not null;
alter table employee_payroll modify address varchar(40) default 'Bengaluru';

alter table employee_payroll add Basic_Pay int;
alter table employee_payroll add Deductions int;
alter table employee_payroll add Taxable_Pay int;
alter table employee_payroll add Income_Tax int;
alter table employee_payroll add Net_Pay int;

insert into employee_payroll (name,salary,start_date,gender,phone,department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay) 
values("Terissa",35000,'2022-03-04',"female",9739713842,"Marketing",25000,1000,500,1000,22500);
/*Payroll Service DB */
Select * from employee_payroll where name = "Terissa";

/* Create table */
create table employee_department
(
department_id int auto_increment,
department_name varchar(30) default 'Sales',
emp_department_id int not null,
primary key (department_id),
foreign key (emp_department_id) references employee_payroll(id)
on delete cascade
);

/* insert records into table */
insert into employee_department(department_name,emp_department_id) values("Marketing",1),("Sales",2),("Admin",3),("HR",4),("Devops",5);

/* Show all records in the table */ 
Select * from employee_department;

/* Inner Join*/
Select * from employee_payroll as ep
inner join employee_department as ed 
on ep.id = ed.emp_department_id;

Select ep.name,ed.department_name from employee_payroll as ep
inner join employee_department as ed
on ep.id = ed.emp_department_id
where ep.name = "Nagraj";

Select min(department_id),max(department_id),avg(department_id),count(department_id),sum(department_id) 
from employee_department; 


