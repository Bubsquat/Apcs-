var socket;

function setup() {
  createCanvas(800,800);
  socket = io.connect('https://localhost:3000');
}

function draw() {
  background(50);
  ellipse(mouseX,mouseY, 60, 60);
}