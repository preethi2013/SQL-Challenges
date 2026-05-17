create database employee;
use employee;
create table Departments(department_id int primary key ,department_name varchar(100)not null unique );
create table Location(location_id int primary key ,location_name varchar(100) not null unique);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender CHAR(1),
    age INT,
    hire_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    CONSTRAINT chk_gender CHECK (gender IN ('M','F')),
    CONSTRAINT chk_age CHECK (age >= 18),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id));
alter table employees add Email varchar	(100);
alter table employees modify designation varchar(250);
alter table	employees	drop age ;
alter table	employees change  hire_date  date_of_joining date ;
rename	table departments to Departments_Info;
rename	table location to Locations ;
truncate table  Employees;
drop table employees;
drop database employee;