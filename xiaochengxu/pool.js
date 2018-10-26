//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'mysql-999',
  database: 'weixin',
  port:"3306",
  connectionLimit: 100 
});
//把创建好的连接池导出
module.exports = pool;




