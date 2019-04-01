//const socket = io('socket.io-client');

var pX;
var pY;

let pSize = 60;


function setup() {
  createCanvas(800,800);
  pX = random((pSize/2)+5,width-((pSize/2)+5));
  pY = random((pSize/2)+5,height-((pSize/2)+5));
  socket = io.connect('https://localhost:3000');
}

var data = {
	x: pX,
	y: pY
}


function keyPressed(){
	console.log(pX + ',' + pY);

	socket.emit('position', data);
}

function draw() {
  background(50);
  ellipse(pX, pY, pSize, pSize);
}

