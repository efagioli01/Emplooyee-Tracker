DROP DATABASE IF EXISTS employeeMgrDb;

CREATE DATABASE employeeMgrDb;

USE employeeMgrDb;

CREATE TABLE departments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    departments_id INTEGER NOT NULL,
    INDEX dept_ind (departments_id),
    CONSTRAINT fk_departments FOREIGN KEY (departments_id) REFERENCES departments(id) ON DELETE CASCADE 
);


CREATE TABLE employees (
    id INTEGER NOT NUll AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    roles_id INTEGER NOT NULL,
    INDEX roles_ind (roles_id),
    CONSTRAINT fk_roles FOREIGN KEY (roles_id) REFERENCES roles(id) ON DELETE CASCADE,
    manager_id INTEGER, 
    INDEX manager_ind (manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL
);



