import express from 'express';
// import User from '../core/user';
import db from '../db';
const router = express.Router();

// const user = new User();

//get index page
router.get('/', (req, res, next) =>{
    res.render('index', {title: 'User Entry Details'});
})

// Post Entry Data
router.post('/login',(req, res, next) => {
    // let userInput = {
    //     name: req.body.name,name
    //     email:req.body.email,
    //     phone: req.body.phone
    // };
    // user.create(userInput, function(lastId){
    //     if(lastId){
    //         res.send('Welcome' + userInput.name);
    //     }else{
    //         console.log('Error')
    //     }
    // })

    // db.query('INSERT INTO users SET ?', req.body, function(err, result){
    //     res.send('Welcome');
    // })
    let sql = `INSERT INTO users(name, email, phone, pin) VALUES (?, ?, ?, ?)`;
    let user = [
        req.body.name,
        // req.body.email,
        req.body.phone,
        req.body.pin
    ]

    db.query(sql, user, (err, results, fields) =>{
        if(err){
            return console.error(err.message);
        }else{
            res.send('Welcome');
        }
    })
})

module.exports = router;     