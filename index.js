const inquirer = require('inquirer');
const questTask= require('./controllers/taskQuestions');

const addEmployee = require('./controllers/addEmployees');
const addRole = require('./controllers/addRoles');
const addDept = require('./controllers/addDepartment');
const updateEmployee = require('./controllers/updateEmployee');
const viewByMng = require('./controllers/viewByMng')
const toDeleteEmployee = require('./controllers/deleteEmployee');
const toDeleteRole = require('./controllers/deleteRole');
const toDeleteDept = require('./controllers/deleteDepartment');

const dal = require('./controllers/dal');
const DB = require('./db/db');

const askTask = () => {
    inquirer
        .prompt(questTask)
        .then((answers) => {
            const task = answers.task;
            console.log(task)
            if (task === 'View all employees') {
                dal.viewAll(DB.allEmployees).then((res) => askTask());
            } else if (task === 'View employees by manager') {
                viewByMng()
                .then((answers) => {
                    console.log(answers)
                    dal.viewAllBy(DB.allEmployeesByMng, 'm.id', answers.managerId)
                } )
                .then(() => askTask());
            } else if (task === 'View all roles') {
                dal.viewAll(DB.allRoles)
                .then(() => askTask());
            } else if (task === 'View all departments') {
                dal.viewAll(DB.allDepts)
                .then(() => askTask());
            } else if (task === 'Add employee') {
                addEmployee(askTask)
               
            } else if (task === 'Add role') {
                addRole().then(() => askTask());
            
            } else if (task === 'Add department') {
                addDept(askTask);
                
            } else if (task === 'Update employee') {
                updateEmployee()
                
            } else if (task === 'Delete employee') {
                toDeleteEmployee()
                .then((answers) => dal.deleteFrom(DB.deleteId, 'employees', Number(answers.empToDelete)))
                .then(() => askTask());
            } else if (task === 'Delete role') {
                toDeleteRole()
                .then((answers) => dal.deleteFrom(DB.deleteId, 'roles', Number(answers.roleToDelete)))
                .then(() => askTask());
            } else if (task === 'Delete department') {
                toDeleteDept()
                .then((answers) => dal.deleteFrom(DB.deleteId, 'departments', Number(answers.deptToDelete)))
                .then(() => askTask());
            } else {
                process.exit();
            }
        })
        .catch((err) => console.log(err));
};

askTask();

module.exports = askTask;
