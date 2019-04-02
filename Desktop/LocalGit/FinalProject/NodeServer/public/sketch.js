//const socket = io('socket.io-client');

var pX;
var pY;

let pSize = 60;


function setup() {
  createCanvas(800,800);
  pX = parseInt(random((pSize/2)+5,width-((pSize/2)+5)));
  pY = parseInt(random((pSize/2)+5,height-((pSize/2)+5)));
  socket = io.connect('https://localhost:3000');
}

var data = {
	x: pX,
	y: pY
}

// edge detection for player movement 

function edgeCheck(data, key, pSize){

  var availableMovement = {
    l:1,
    r:1,
    u:1,
    d:1
  }

  if(pX+pSize <= 0 && key == 'a'){
    l = 0;
  }else{
    l = 1;
  }

  if(pX-pSize >= width && key == 'd'){
    r = 0;
  }else{
    r = 1;
  }

  if(pY+pSize <= 0 && key == 'w'){
    u = 0;
  }else{
    u = 1;
  }

  if(pY-pSize >= height && key == 's'){
    d = 0;
  }else{
    d = 1;
  }
  return availableMovement; 

}


function keyPressed(availableMovement){

  //left
  if(key == 'a'){
    pX = pX - l;
  }

  //rights
  if(key == 'd'){
    pX = pX + r;

  }

  //up 
  if(key == 'w'){
    pY = pY - u;
  }

  //down 
  if(key == 's'){
    pY = pY + d;
  }


	console.log(pX + ',' + pY);

	socket.emit('position', data);
}

function draw() {
  background(50);
  ellipse(pX, pY, pSize, pSize);
}

