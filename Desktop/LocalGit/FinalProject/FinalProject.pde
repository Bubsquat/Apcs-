/*

  The purpose of this sketch is to test functionality for the 
  p5js code that is implimented on the server. The code on here 
  is not exactly one to one with what will be on the server. 

*/

int pSize = 60;
float pX = random((pSize/2)+5,width-((pSize/2)+5));
float pY = random((pSize/2)+5,height-((pSize/2)+5));

void setup(){
  
  background(50);
  size(800,800);
  
}

void draw(){
  ellipse(pX,pY,pSize,pSize);
  
}
