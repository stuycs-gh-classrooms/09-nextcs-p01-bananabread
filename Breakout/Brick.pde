class Brick {
  PVector center;
  int brickw;
  int brickh;
  color c;
  
  Brick(PVector p, int w, int h) {
    brickw = w;
    brickh = h;
    center = new PVector(p.x, p.y);
  }
  
  void display() {
    fill(c);
    rect(center.x - brickw/2, center.y - brickh/2, brickw, brickh);
  }
}
