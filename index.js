const inquirer = require('inquirer');
const questTask - [
    {
        type:  'rawList',
        name: 'task',
        message: 'what would you like to do?',
        choices: [
            new inquirer.Separator('=== VIEW INFO ==='),
            'view all employees',
            'view employee manager',
            'view all departments',
            new inquirer.Separator('=== ADD NEW INFO ===')
        ]
    }
]