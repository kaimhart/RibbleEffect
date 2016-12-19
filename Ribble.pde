class Ribble {
  int x;
  int y;
  int r;
  int delay;
  
  Ribble(int x, int y) {
    this.x = x;
    this.y = y;
    this.r = 1;
    this.delay = int(random(500));
  }
  
  void show() {
    if (delay == 0) {
      ellipseMode(CENTER);
      strokeWeight(5);
      stroke(255, 255, 255, 100);
      noFill();
      ellipse(x, y, r*2, r*2);
      r += 1;
      
      if( r > width) {
        r = 2;
      }
    } else {
      delay = int(random(500));
    }
  }
}