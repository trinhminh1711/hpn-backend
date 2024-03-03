'use strict';
const mysql = require('mysql');

const db = mysql.createConnection({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "hpn_app",
  password: process.env.DB_PASS || "Security1234!@#$",
  database: process.env.DB_NAME || "hpn_app"
});

module.exports = db
