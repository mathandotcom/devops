'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
const dotenv = require('dotenv');
dotenv.config();
var portnumber= process.env.PORT;
var env=process.env.ENV
var database=process.env.DATABASE
var txt = 'Hello' +' '+ 'PORTNUMBER '+ portnumber + ' ' + 'Environment '+ env +' ' + 'Database :'+database;
	
  res.send(txt);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
