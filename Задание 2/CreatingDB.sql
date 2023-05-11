CREATE DATABASE companyDB

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    department_id INT NOT NULL,
    direct_supervisor_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments (department_id),
    FOREIGN KEY (direct_supervisor_id) REFERENCES supervisors (supervisor_id)
);

CREATE TABLE supervisors (
	supervisor_id INT PRIMARY KEY,
	supervisor_name VARCHAR (255)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    department_head_id INT NOT NULL,
    FOREIGN KEY (department_head_id) REFERENCES supervisors (supervisor_id)
);

CREATE TABLE sections (
    section_id INT PRIMARY KEY,
    section_name VARCHAR(255) NOT NULL,
    department_id INT NOT NULL,
    section_head_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments (department_id),
    FOREIGN KEY (section_head_id) REFERENCES supervisors (supervisor_id)
);