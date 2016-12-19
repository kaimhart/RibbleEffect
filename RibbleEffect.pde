int x;
int y;
Ribble[] ribs;

void setup() {
  size(1280, 720);
  ribs = new Ribble[20];
  for (int i = 0; i < ribs.length; i++){
    ribs[i] = new Ribble(int(random(width)), int(random(height)));
  }
}

void draw() {
  background(80, 125, 200);
  for (int i = 0; i < ribs.length; i++){
    ribs[i].show();
  }
}