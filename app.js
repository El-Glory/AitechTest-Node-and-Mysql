import express from 'express';
// import mysql from 'mysql';
import pageRouter from './routes/pages';
import path from 'path';
import db from './db';

const app = express();

app.use(express.urlencoded({extended:false}));

//server static files
app.use(express.static(path.join(__dirname, 'public')));

//template engine
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');


app.use('/', pageRouter);








//Create DB
app.get('/createdb', (req,res) => {
    let sql = 'CREATE DATABASE Aitechnodemysql';
    db.query(sql, (err,result)=> {
        if(err) throw err;
        console.log(result);
        res.send('database created');
    });
});

// Create Table
app.get('/createuserstable', (req,res) =>{
    let sql = 'CREATE TABLE users(id int AUTO_INCREMENT, name VARCHAR(255), email VARCHAR(255), phone VARCHAR(255), pin VARCHAR(255), PRIMARY KEY(id))';
    db.query(sql, (err, result) => {
        if(err) throw err;
        console.log(result);
        res.send('Users table created');
    })
})

app.use('/', pageRouter);

app.listen('5000', ()=>{
    console.log("Server started on port 5000");
});


module.exports = app;
