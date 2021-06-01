USE employeeMgrDb;

INSERT INTO departments (dept_name) 
VALUES
    ('Management'),
    ('Sales and service'),
    ('Human Resources'),
    ('Accounting'),
    ('Warehouse');

INSERT INTO roles (title, salary, department_id) 
VALUES 
    ('Regional manager', 80000, 1),
    ('Assistant Regional manager', 60000, 3),
    ('Assistant to Regional manager', 50000, 4),
    ('Human Resources', 70000, 4),
    ('Reception', 40000, 5),
    ('Warehouse Foreman', 65000, 3),
    ('Regional Sales Director', 70000, 5),
    ('Senior Accountant', 65000, 3),
    ('Customer Service', 50000, 1),
    ('Accountant', 55000, 2);

INSERT INTO employees (first_name, last_name, role_id, manager_id) 
VALUES 
    ('Michael', 'Scott', 1, NULL),
    ('Jim', 'Flenderson', 3, 1),
    ('Toby', 'Scott', 4, 1),
    ('Pam', 'Beasly', 5, 2),
    ('Darryl', 'Philbin', 6, 3),
    ('Andy', 'Bernard', 7, 2),
    ('Angela', 'Martin', 8, 4),
    ('Kelly', 'Kapoor', 9, 2),
    ('Kevin', 'Malone', 8, 4); 

    
-- Employees Starter Table

INSERT IGNORE INTO employees (id, first_name, last_name, role_id, manager_id) VALUES
    (1, 'Michael', 'Scott', 1, null),
    (2, 'Dwight', 'Schrute', 2, 1),
    (3, 'Jim', 'Halpert', 3, 1),
    (4, 'Toby', 'Flenderson', 4, 1),
    (5, 'Pam', 'Beasely', 5, 2),
    (6, 'Darryl', 'Philbin', 6, 5),
    (7, 'Andy', 'Bernard', 7, 2),
    (8, 'Angela', 'Martin', 8, 4),
    (9, 'Kelly', 'Kapoor', 9, 2),
    (10, 'Kevin', 'Malone', 10, 4); 


-- Roles Starter Table

INSERT INTO roles (title, salary, department_id) VALUES ('Regional Manager', 80000, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Assistant TO Regional Manager', 50000, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Assistant Regional Manager', 60000, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Human Resources', 70000, 3);
INSERT INTO roles (title, salary, department_id) VALUES ('Reception', 40000, 2);
INSERT INTO roles (title, salary, department_id) VALUES ('Warehouse Foreman', 65000, 5);
INSERT INTO roles (title, salary, department_id) VALUES ('Regional Sales Director', 70000, 2);
INSERT INTO roles (title, salary, department_id) VALUES ('Senior Accountant', 65000, 4);
INSERT INTO roles (title, salary, department_id) VALUES ('Customer Service', 50000, 2);
INSERT INTO roles (title, salary, department_id) VALUES ('Accountant', 55000, 4); 

-- Department Starter Table

INSERT INTO departments (dept_name) VALUES ('Management');
INSERT INTO departments (dept_name) VALUES ('Sales & Service');
INSERT INTO departments (dept_name) VALUES ('Human Resources');
INSERT INTO departments (dept_name) VALUES ('Accounting');
INSERT INTO departments (dept_name) VALUES ('Warehouse'); 



