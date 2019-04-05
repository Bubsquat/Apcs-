/*
	Socket.io server code

*/

//importing required libraries 
//var app = require('express')();

var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

//connecting to index.html for site 
app.get('/', function(req, res){
	res.sendFile(__dirname + '/public/index.html');
});

app.use(express.static('public'));

//runs on connection 
io.on('connection', function(socket){
  console.log('a user connected: ' + socket.id);

  //disconnection message 
  socket.on('disconnect', function(){
    console.log('user disconnected: ' + socket.id);
  });

  socket.on('position', logPosition);

  function logPosition(){
  	console.log(data);
  	//console.log();
  }

});

//connection message 
http.listen(3000, function(){
	console.log('listening on *:3000');
});


