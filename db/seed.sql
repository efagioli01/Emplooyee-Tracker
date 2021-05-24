USE employeeMgrDb;

INSERT INTO departments (name) 
VALUES
    ('Management'),
    ('Sales and service'),
    ('Human Resources'),
    ('Accounting'),
    ('Warehouse');

INSERT INTO roles (title, salary, departments_id) 
VALUES 
    ('Regional manager', 80000, 1),
    ('Assistant Regional manager', 60000, 3),
    ('Human Resources', 70000, 4),
    ('Reception', 40000, 5),
    ('Warehouse Foreman', 65000, 3),
    ('Regional Sales Director', 70000, 5),
    ('Senior Accountant', 65000, 3),
    ('Customer Service', 50000, 1),
    ('Accountant', 55000, 2);

INSERT INTO employees (first_name, last_name, roles_id, manager_id) 
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



