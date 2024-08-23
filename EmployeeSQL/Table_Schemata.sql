CREATE TABLE Department (
  dep_id VARCHAR(30) primary key,
  dep_name VARCHAR(30) NOT NULL
);

CREATE TABLE Title (
  title_id VARCHAR(30) primary key,
  title_name VARCHAR(30) NOT NULL
);

select * from Salaries

drop table Titles

CREATE TABLE Employee (
  emp_id int primary key,
  title_id VARCHAR(30) NOT NULL,
  birthday date NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex varchar(10) not null,
  hire_date date NOT NULL,
  foreign key (title_id) references Title(title_id) 
);

CREATE TABLE Salaries (
  emp_id int primary key,
  salary int NOT NULL,
  foreign key (emp_id) references Employee(emp_id)
);

CREATE TABLE Employee_Department (
  emp_id int NOT NULL,
  dep_id VARCHAR(30) NOT NULL,
  foreign key (emp_id) references Employee(emp_id),
  foreign key (dep_id) references Department(dep_id) 
);

CREATE TABLE Department_Manager (
  dep_id VARCHAR(30) NOT NULL,
  emp_id int NOT NULL,
  foreign key (dep_id) references Department(dep_id),
  foreign key (emp_id) references Employee(emp_id) 
);