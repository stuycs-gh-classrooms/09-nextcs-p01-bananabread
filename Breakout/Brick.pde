class Brick {
  float brickx;
  float bricky;
  float brickwidth;
  float brickheight;
  float health;//will use to make bricks have more lives
  int brickcolor;//will use to show health for bricks 
  boolean status;
  
  Brick (float x, float y, float brickwidth, float brickheight, float health) {
    brickx = x;
    bricky = y;
    brickwidth = width / cols;
    brickheight = height;
    health = health;
  }
  
  void display() {
    fill(255,0,0);
    if (status) 
    { rect(brickx, bricky, brickwidth, brickheight); }
  } 
}
