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
  
<<<<<<< HEAD
  void display() {
    fill(c);
    rect(center.x - brickw/2, center.y - brickh/2, brickw, brickh);
  }
=======
  void makeBricks() {
    PVector start = pos.copy();
    for (int r = 0; r < bricks.length; r++) {
      for (int c = 0; c < bricks[r].length; c++) {
        bricks[r][c] = new Brick(start, brickSize);
        start.x+= brickSize;
      }
      start.y+= brickSize;
      start.x = pos.x;
  
  void display() {
    for (int r = 0; r < bricks.length; r++) {
      for (int c = 0; c < bricks[r].length; c++) {
        bricks[r][c] = new Brick(pos, brickSize);
      }
    }
>>>>>>> refs/remotes/origin/main
}
