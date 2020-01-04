// import db from '../db';

// function User(){}
    
//     User.prototype = {
//         find :  function(user = null, callback){
//             if(user){
//                 var field = Number.isInteger(user) ? 'id' : 'username';
//             }
//             let sql = `SELECT * FROM users WHERE ${field} = ?`;
//             db.query(sql,user, function(err, result){
//                 if(err) throw err
//                 callback(result);
//             })
//         },
//         create: function(body, callback){
//             let bind = [];

//             for(prop in body){
//                 bind.push(prop);
//             }

//             let sql = 'INSERT INTO users(name, email, phone, pin) VALUES (?, ?, ?, ?)';
//             db.query(sql,bind, function(err, lastId){
//                 if(err) throw err;
//                 callback(lastId)
//             }); 
//         }
//     }

//     module.exports = User;