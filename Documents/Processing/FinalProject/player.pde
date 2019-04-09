public class player {

  // declaring variables
  int pX;
  int pY;
  int pSize = 80;
  int player;

  // constructor with player number passed in 
  player(int player_) {

    player = player_;

    // changing starting position for player 2
    if (player == 2) {
      pX = width-squareCenter;
      pY = height-squareCenter;
    }
  }


  void display() {

    // drawing players and running edge detection function
    if ( player == 1) {
      fill(255, 0, 0);
      ellipse(pX, pY, pSize, pSize);
    } 

    if ( player == 2) {
      fill(0, 0, 255);
      triangle(pX, pY-squareCenter, pX-squareCenter, pY+squareCenter, pX+squareCenter, pY+squareCenter);
    }
    edgeDetection();

    // when a key is pressed find which key and move player
    if (keyDown == true) {

      // check which player is moving 
      if (player == 1) {

        if (currentKey == 'w') {
          pY = pY - 2*squareCenter;
        }

        if (currentKey == 's') {
          pY = pY + 2*squareCenter;
        }

        if (currentKey == 'a') {
          pX = pX - 2*squareCenter;
        }

        if (currentKey == 'd') {
          pX = pX + 2*squareCenter;
        }
      }
      // check which player is moving
      if (player == 2) {

        if (currentKey == 'i') {
          pY = pY - 2*squareCenter;
        }

        if (currentKey == 'k') {
          pY = pY + 2*squareCenter;
        }

        if (currentKey == 'j') {
          pX = pX - 2*squareCenter;
        }

        if (currentKey == 'l') {
          pX = pX + 2*squareCenter;
        }
      }

      // ending draw so player only moves once per button press and broadcasting players position to square objects
      noLoop();
      playerPos();
    }
  }

  void edgeDetection() {
    // edge detection for player

    if (pX < squareCenter) {
      pX = squareCenter;
    }

    if (pX > width-squareCenter) {
      pX = width-squareCenter;
    }

    if (pY < squareCenter) {
      pY = squareCenter;
    }

    if (pY > height-squareCenter) {
      pY = height-squareCenter;
    }
  }

  // function returns which square a player is currently in 
  int playerPos() {

    int gridSpace = ((pX/100)+1)+((pY/100)*8); 
    return gridSpace;
  }
}
