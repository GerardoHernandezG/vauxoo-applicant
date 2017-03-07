-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
    PRIMARY KEY (id),
    id          SERIAL,
    name        VARCHAR(50) NOT NULL,
    description TEXT        NOT NULL
);

CREATE TABLE employee (
    PRIMARY KEY (id),
    id          SERIAL,
    first_name  VARCHAR(20) NOT NULL,
    last_name   VARCHAR(20) NOT NULL,
    department_id int REFERENCES employee_department(id) NOT NULL    
);

--INSERT DATA INTO employee_department
  
INSERT INTO employee_department(name, description)
    VALUES ('Computing', 'Computing and Technical Support Department');
INSERT INTO employee_department(name, description)
    VALUES ('Human Resources', 'Human Resources Department');
INSERT INTO employee_department(name, description)
    VALUES ('Administration', 'Administration Department');
INSERT INTO employee_department(name, description)
    VALUES ('Marketing', 'Marketing Department');
INSERT INTO employee_department(name, description)
    VALUES ('Finance', 'Department of Finance');
INSERT INTO employee_department(name, description)
    VALUES ('Management', 'Management of the company');
	
--INSERT DATA INTO employee	

INSERT INTO employee(first_name, last_name, department_id)
    VALUES ('Gerardo', 'Hernandez', 1);
INSERT INTO employee(first_name, last_name, department_id)
    VALUES ('Jorge', 'Gonzalez', 2);
INSERT INTO employee(first_name, last_name, department_id)
    VALUES ('Pedro', 'Perez', 2);
INSERT INTO employee(first_name, last_name, department_id)
    VALUES ('Juan', 'Lopez', 6);

CREATE TABLE employee_hobby (
);

-- ...
