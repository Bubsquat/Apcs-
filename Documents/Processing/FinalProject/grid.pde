class grid {

  void display() {

    strokeWeight(1);

    // vertical lines
    line(100, 0, 100, width);
    line(200, 0, 200, width);
    line(300, 0, 300, width);
    line(400, 0, 400, width);
    line(500, 0, 500, width);
    line(600, 0, 600, width);
    line(700, 0, 700, width);

    //horizontal lines
    line(0, 100, height, 100);
    line(0, 200, height, 200);
    line(0, 300, height, 300);
    line(0, 400, height, 400);
    line(0, 500, height, 500);
    line(0, 600, height, 600);
    line(0, 700, height, 700);
  }
}
