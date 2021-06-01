const util = require('util');
const connection = require('../config/db');

const queryAsync = util.promisify(connection.query).bind(connection);

const getAllEmp = async (value) => {
    try {
        const rows = await queryAsync("SELECT * FROM employees");
        return rows.map((employee) => ({ name: `${employee.first_name} ${employee.last_name}`, value: employee.id}));
    } catch (err) {
        console.log('There was an error querying the database to select all employees.');
    }
};

const getAllRoles = async () => {
    try {
        const rows = await queryAsync("SELECT * FROM roles");
        return rows.map((role) => ({name: role.title, value: role.id}));
    } catch (err) {
        console.log(`Err at getAllRoles,`, err);
    }
};

const getAllDepts = async() => {
    try {
        const rows = await queryAsync("SELECT * FROM departments");
        return rows.map((dept) => ({name: dept.dept_name, value: dept.id}));
    } catch (err) {
        console.log(`Err at getAllDepts,`, err);
    }
};

const getAllManagers = async () => {
    try {
        const rows = await queryAsync("SELECT * FROM employees WHERE manager_id IS NULL OR manager_id = id OR id IN (SELECT DISTINCT manager_id FROM employees)");
        const managers = rows.map((manager) => {
            return {
                name: `${manager.first_name} ${manager.last_name}`,
                value: manager.id
            }
        });
        return managers;
    } catch (err) {
        console.log('Err at getAllManagers:', err);
        throw err
    }
};

module.exports = { getAllEmp, getAllRoles, getAllDepts, getAllManagers }