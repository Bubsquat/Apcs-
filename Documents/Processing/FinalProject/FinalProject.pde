/*
  4/9/19
  AP Compsci final project 
*/

// declaring public variables
public char currentKey;
public boolean keyDown;
public int squareCenter = 50;
public int squareSide = 100;

//public int 

// declaring variables
int r = 56;
int g = 221;
int b = 226;
int cR = 1;
int cG = 1;
int cB = 1;
int numBoxes = 64;
int totalState = 0;

// declaring objects 
grid a;
player one;
player two;
square[] squares = new square[numBoxes];

void setup() {
  // setting up canvas
  size(800, 800, P2D);

  // setting up objects 
  a = new grid();
  one = new player(1);
  two = new player(2);
  for (int i = 0; i < squares.length; i++) {
    squares[i] = new square(i);
  }
}

void draw() {
  // setting current key to global variable 
  currentKey = key;

  // making background animation
  r = r+cR;
  g = g+cG;
  b = b+cB;

  if (r == 244 || r == 56)cR = cR*-1;
  if (g == 71 || g == 221)cG = cG*-1;
  if (b == 247 || b == 226)cB = cB*-1;

  background(r, g, b);  

  // displaying gridlines
  a.display();

  // displaying squares
  for (int i = 0; i < squares.length; i++) { 
    squares[i].display();
  }

  // displaying players 
  one.display();
  two.display();

  // checking for end of the game 
  for (int i = 0; i <= 63; i++) {
    totalState = totalState + squares[i].broadcast();
  }
  if (totalState == 64) {
    delay(5000);
    exit();
  }
  totalState = 0;
} 

// updating global variable if key is down 
void keyPressed() {
  keyDown = true;
}

// updating global variable when key is released
void keyReleased() {
  loop();
  keyDown = false;
}
