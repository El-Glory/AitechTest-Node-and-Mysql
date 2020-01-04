import express from 'express';
// import User from '../core/user';
import db from '../db';
import {pinGenerator} from '../pin-generator';
import {sendMail} from '../mail.js';
const router = express.Router();
import nodemailer from 'nodemailer';

// const user = new User();

//get index page
router.get('/', (req, res, next) =>{
    res.render('index', {title: 'User Entry Details'});
})

// Post Entry Data
router.post('/collector',(req, res, next) => {
    console.log(req.body);
    let pin = pinGenerator();
    // console.log(pins);
    let sql = `INSERT INTO users(name, email, phone, pin) VALUES (?, ?, ?, ?)`;
    let user = [
        req.body.name,
        req.body.email,
        req.body.phone,
        pin
    ]

    db.query(sql, user, (err, results, fields) =>{
        if(err){
            return console.error(err.message);
        }else{
            let mail = sendMail(req.body.email, pin);
            return res.status(200).json({ message: "success"});
        }
    })
});


router.post('/pin', (req, res) =>{

   try {
      console.log(req.body.pin);
       const pins = req.body.pin;
       console.log(pins);
       let sql = `SELECT * FROM users WHERE pin =`+ pins;

       db.query(sql, (err, results, fields) =>{
           if(err){
               return console.error(err.message);
           }else{
               res.json(results);
           }
       })

   } catch (error) {
        return res.status(500).json({ message: error.message})
   }
})

module.exports = router;
