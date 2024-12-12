class Brick {
  PVector center;
  int brickw;
  int brickh;
  color b;

  Brick(PVector p, int w, int h) {
    brickw = w;
    brickh = h;
    center = new PVector(p.x, p.y);
  }

  //<<<<<<< HEAD
  void display() {
    fill(c);
    rect(center.x - brickw/2, center.y - brickh/2, brickw, brickh);
  }
