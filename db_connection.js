// This file will handle the connection to the PostgreSQL database 

const { Pool } = require('pg');
require('dotenv').config(); // Load environment variables from .env file

const pool = new Pool({
  connectionString: process.env.DATABASE_URL, // Connection string from .env
});

pool.connect((err) => {
  if (err) {
    console.error('Error connecting to the database', err);
  } else {
    console.log('Connected to PostgreSQL database');
  }
});

module.exports = pool;

