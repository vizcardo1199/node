require('dotenv').config()

const express = require('express');
const config = require('./config/mysql.config');
const connection = config.connection;
const bodyParser = require('body-parser');

const PORT = process.env.PORT;

const app = express();

app.use(bodyParser.json());

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
    const sql = 'INSERT INTO users SET ?'
    const usersObj = {
       us_name: req.body.us_name,
       us_edad: req.body.us_edad,
       us_genero: req.body.us_genero,
       us_pais: req.body.us_pais,
       us_departamento: req.body.us_departamento,
       us_distrito: req.body.us_distrito,
       us_direccion: req.body.us_direccion,
       us_telefono: req.body.us_telefono,
       us_mail: req.body.us_mail,
    }
    connection.query(sql , usersObj , error => {
        if(error) throw error ;
        res.send('User created')    
    });
});


app.put('/update-user/:id', (req, res) => {
    const { us_name, us_edad , us_genero , us_pais , us_departamento , us_distrito , us_direccion , us_telefono , us_mail } = req.body;
    const { row_users } = req.params;
    const query = `
      SET @row_users = ?;
      SET @us_name = ?;
      SET @us_edad = ?;
      SET @us_genero = ?;
      SET @us_pais = ?;
      SET @us_departamento = ?;
      SET @us_distrito = ?;
      SET @us_direccion = ?;
      SET @us_telefono = ?;
      SET @us_mail = ?;
      CALL users(@row_users, @us_name , @us_edad ,@us_genero ,@us_pais ,@us_departamento  , @us_distrito,@us_direccion ,@us_telefono ,SET @us_mail = ?;  );
    `;
    connection.query(query, [row_users, us_name, us_edad , us_genero , us_pais , us_departamento , us_distrito , us_direccion , us_telefono , us_mail], (err, rows, fields) => {
      if(!err) {
        res.json({status: 'Employee Updated'});
      } else {
        console.log(err);
      }
    });
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
