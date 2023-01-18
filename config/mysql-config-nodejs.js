// Configuración de una base de datos en NodeJS con mysql
const mysql = require('mysql');

/* Creating a connection pool to the database. */
const dbConnection = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
  port: '3306',
});

module.exports = { dbConnection };
