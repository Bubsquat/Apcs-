/*

  Hello world 

*/

grid a;
player one;

int r = 56;
int g = 221;
int b = 226;
int cR = 1;
int cG = 1;
int cB = 1;

public char currentKey;
public boolean keyDown;

void setup(){
  size(800,800);
  
  a = new grid();
  one = new player(1);
  
}

void draw(){
  
  currentKey = key;
  
  r = r+cR;
  g = g+cG;
  b = b+cB;
  
  if(r == 244 || r == 56)cR = cR*-1;
  if(g == 71 || g == 221)cG = cG*-1;
  if(b == 247 || b == 226)cB = cB*-1;
  
  background(r, g, b);  //244, 71, 247
  a.display();
  one.display();
  
  //print(keyDown);
} 


void keyPressed(){
   keyDown = true;
}


void keyReleased(){
  keyDown = false;
}
