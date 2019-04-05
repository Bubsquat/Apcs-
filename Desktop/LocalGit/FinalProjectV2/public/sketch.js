/*

	Server Client Code

*/

var pX;
var pY;
let moveSpeed = 50;
let pSize = 60;

function setup(){

	createCanvas(800,800);
	pX = parseInt(random((pSize/2)+5,width-((pSize/2)+5)));
  	pY = parseInt(random((pSize/2)+5,height-((pSize/2)+5)));
	socket = io.connect('https://localhost:3000');
}


var data = {
	x: mouseX,
	y: mouseY
}


function draw() {

	setInterval(movement, 100000);

	function movement(){
		background(50);
		ellipse(mouseX, mouseY, pSize, pSize);

		console.log("sent");
		socket.emit('position', data);		
	}

	edgeCheck();
}

function edgeCheck(){

	if(pY+(pSize/2) > height){
		pY = height-(pSize/2);
	}

	if(pY-(pSize/2) < 0){
		pY = pSize/2;
	}

	if(pX+(pSize/2) > width){
		pX = width-(pSize/2);
	}

	if(pX-(pSize/2) < 0){
		pX = pSize/2;
	}
}

function mouseDragged(){

/*
	//if(){
	//	console.log('attack');
	//}

	background(50);
	ellipse(pX, pY, pSize, pSize);

	edgeCheck();

	console.log("sent");
	socket.broadcast.emit('position', 'x:' + pX + 'y:' + pY);

*/
}

