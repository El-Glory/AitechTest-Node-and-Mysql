import util from 'util'
import mysql from 'mysql';

//create connection
const db = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Aitechnodemysql'
});

//connect
db.connect((err) =>{
    if(err){
        throw err;
    }
    console.log('Mysql Connected...')
});

db.query = util.promisify(db.query);


export default db;
