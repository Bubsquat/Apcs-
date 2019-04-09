class square {

  // declaring variables
  int currentSquare;
  int posX = 0;
  int posY = 0;
  int currentState = 0;
  color c = color(0, 0, 0); 

  // constructor with curren square (by number in array) passed in 
  square(int currentSquare_) {
    currentSquare = currentSquare_;

    // setting position based on which number square this object is
    posX = currentSquare - (width/squareSide)*(currentSquare/(width/(squareSide)));
    posY = ((currentSquare)/(width/squareSide));
  } 

  void display() {
    // squares are only drawn when the player lands on them
    if (currentState > 0) {
      fill(c);
      rect(squareSide*posX, squareSide*posY, 2*squareCenter, 2*squareCenter);
    }

    // exposing squares when player lands on them 
    if (one.playerPos() == currentSquare+1 && currentState == 0) {
      c = color(255, 0, 0);    
      currentState = 1;
    }

    if (two.playerPos() == currentSquare+1 && currentState == 0) {
      c = color(0, 0, 255);
      currentState = 1;
    }
  }

  // sends state of every square for tally
  public int broadcast() {  
    if (currentState == 1) {
      return(1);
    } else {
      return(0);
    }
  }
}
