class Ribble {
  float x;
  float y;
  float r;
  int delay;
  float lifespan;
  float speed;
  
  Ribble() {
    reset();
  }
  
  void show() {
    if (delay == 0) {
      if (lifespan > 0) {
        ellipseMode(CENTER);
        strokeWeight(5);
        stroke(255, lifespan);
        noFill();
        ellipse(x, y, r*2, r*2);
        r += speed;
        lifespan -= 1;
      } else {
        reset();
      }
    } else {
      delay -= 1;
    }
  }
  
  void reset() {
    x = random(width);
    y = random(height);
    r = 1;
    delay = int(random(500));
    lifespan = 255;
    speed = random(1,2);
  }
}