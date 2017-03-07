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
    department_id int REFERENCES employee_department(id) NOT NULL,
    boss INT REFERENCES employee NOT NULL   
);

CREATE TABLE employee_hobby (
    PRIMARY KEY (id),
    id          SERIAL,
    name        VARCHAR(40) NOT NULL,
    description TEXT        NOT NULL
);

CREATE TABLE employee_hobby_employee (
	PRIMARY KEY (id_employee, id_hobby),     
    id_employee INT REFERENCES employee (id)       NOT NULL,
    id_hobby    INT REFERENCES employee_hobby (id) NOT NULL
);

--INSERT DATA INTO employee_department
  
INSERT INTO employee_department(name, description)
    VALUES ('Computing', 'Computing and Technical Support Department'),
           ('Human Resources', 'Human Resources Department'),
           ('Administration', 'Administration Department'),
           ('Marketing', 'Marketing Department'),
           ('Finance', 'Department of Finance'),
           ('Management', 'Management of the company');
	
--INSERT DATA INTO employee	

INSERT INTO employee(first_name, last_name, department_id, boss)
    VALUES ('Gerardo', 'Hernandez', 1, 4),
     	   ('Jorge', 'Gonzalez', 2, 4),
           ('Pedro', 'Perez', 2, 3),
           ('Juan', 'Lopez', 6, 4);

--INSERT DATA INTO employee_hobby	

INSERT INTO employee_hobby (name, description)
	VALUES ('Video Games', 'Enjoy Playing video games like console games or pc games'),
	       ('Exercise', 'Spend time doing exercise like running or training at gym'),
	       ('Listen Music', 'Enjoy Listening to music');

--INSERT DATA INTO employee_hobby_employee (relation)

INSERT INTO employee_hobby_employee (id_employee, id_hobby)
	VALUES (1, 2), (1, 3), (2, 1), (2, 3), (3, 1), (3, 2),
	       (4, 2), (4, 3);

-- ...
