#step 1 : create database

create database data_analyst_project_tracker;
use data_analyst_project_tracker;
show databases;

# step 2 : create employees table
create table employees (
    employee_id int primary key,
    employee_name varchar(50) not null,
    department varchar(50) not null,
    designation varchar(50),
    salary decimal(10,2) check (salary > 0),
    joining_date date);
    
describe employees;

# step 3 : create clients table

create table clients(
	client_id int primary key,
	client_name varchar(50) not null,
	company varchar(60) not null,
	country varchar(30) default 'india');
    
describe clients;

## step 4 : create projects table

create table projects(
	project_id int primary key,
	project_name varchar(100) not null,
	client_id int,
	employee_id int,
	start_date date,
	end_date date,
	budget decimal(12,2) check (budget > 0),
	foreign key (client_id) references clients(client_id),
	foreign key (employee_id) references employees(employee_id)
);

describe projects;

# step 5 : create tasks table

create table tasks(
	task_id int primary key,
	project_id int,
	employee_id int,
	task_name varchar(100),
	deadline date,
	foreign key (project_id) references projects(project_id),
	foreign key (employee_id)references employees(employee_id)
);

describe tasks;

# step 7 : create project status table

create table project_status(
	status_id int primary key,
	project_id int,
	status varchar(20) default 'pending',
	completion_percentage int
	check (completion_percentage between 0 and 100),
	foreign key (project_id) references projects(project_id)
);

describe project_status;

show tables; 
