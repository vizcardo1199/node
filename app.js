require('dotenv').config()

const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const PORT = process.env.PORT;

const app = express();

app.use(bodyParser.json());


//mysql 
const connection = mysql.createConnection({
    host : process.env.DATABASE_HOST,
    user: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    database : process.env.DATABASE_NAME
});

//route - endpoint
app.get('/', (req,res)=>
res.send('welcome monitor health'));

//all users
app.get('/users' , (req,res) =>{
    const sql = 'SELECT * FROM users';
    connection.query(sql , (error,results)=>{
        if (error) throw error;
        if(results.length >0){
            res.json(results);
        }
        else{
            res.send('Not results');
        }
    })
});

app.get('/users/:id' , (req,res) =>{
    const {id} =req.params
    const sql = `SELECT * FROM users WHERE row_users =${id}`;
    connection.query(sql , (error,results)=>{
        if (error) throw error;
        if(results.length >0){
            res.json(results);
        }
        else{
            res.send('Not results');
        }
    })
});

app.post('/add-user',(req,res) =>{
    res.send('New user')
});

app.put('/update-user/:id',(req,res) =>{
    res.send('Update User')
});

app.delete('/delete-user/:id',(req,res) =>{
    res.send('Delete User')
});

// Check connect
connection.connect(error =>{
    if (error) throw error;
    console.log('database server is running');
});

app.listen(PORT , () => console.log(`Server is running ${PORT}`));
