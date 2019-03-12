/*
	Socket server program
*/

// adding express and socket as required package 

var express = require('express');
var socket = require('socket.io');

//create varable for express function 

var app = express();

// create server on port 3000

var server = app.listen(3000);

console.log("running");

// host public folder for html, sketch, and library files 

app.use(express.static('public'));

// setting up socket for server 
var io = socket(server);

io.sockets.on('connection', newConnection);


function newConnection(socket) {

	console.log('connection' + socket.id);
}

// yo yo 1:37:51
