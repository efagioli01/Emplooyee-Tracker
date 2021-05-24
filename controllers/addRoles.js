const inquirer = require('inquirer');

const connection = require('../assets/config/db');
const { getAllDepts } = require('./getAll');

const addRole = (askTask) => {
    Promise.all([getAllDepts()])
        .then((values) => {
            return values[0];
        })
        .then((allDepts) =>
            inquirer.prompt([
                {
                    type: 'input',
                    name: 'title',
                    message: 'what is the title of the role?'
                },
                {
                    type: 'input',
                    name: 'salary',
                    message: 'what is the salary of the role?'
                },
                {
                    type: 'list',
                    name: 'deptId',
                    message: 'what is the dept for this role?',
                    choices: allDepts
                }
        
            ]))
            .then((answers) => {
                connection.query(
                    "INSERT INTO roles SET ?",
                    {
                        title: answers.title,
                        salary: answers.salary,
                        department_id: Number(ansers.deptId)
                    },


                )
            })
}
