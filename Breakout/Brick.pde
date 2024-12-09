class Brick {
  
  Brick[][] bricks;
  PVector pos;
  int brickSize;
  float brickwidth;
  float brickheight;
  float health;//will use to make bricks have more lives
  int brickcolor;//will use to show health for bricks 
  boolean status;
  
  Brick (int rows, int cols, int bsize) {
    bricks = new Brick[rows][cols];
    brickSize = bsize;
    brickwidth = brickSize * cols;
    brickheight = brickSize * rows;
    pos = new PVector(brickSize/2, brickSize/2);
    makeBricks();
    health = health;
  }
  
  void makeBricks() {
    PVector start = pos.copy();
    for (int r = 0; r < bricks.length; r++) {
      for (int c = 0; c < bricks[r].length; c++) {
        bricks[r][c] = new Ball(start, brickSize);
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
