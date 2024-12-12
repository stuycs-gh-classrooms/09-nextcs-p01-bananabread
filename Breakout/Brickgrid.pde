
  Brick[][] bricks;
  PVector pos;
  int brickSize;
  int xsize;
  int ysize;
  float brickwidth;
  float brickheight;
  float health;//will use to make bricks have more lives
  int brickcolor;//will use to show health for bricks
  boolean status;

  Brickgrid(int rows, int cols, int bsize) {
    bricks = new Brick[rows][cols];
    brickSize = bsize;
    brickwidth = brickSize * cols;
    brickheight = brickSize * rows;
    pos = new PVector(brickSize/2, brickSize/2);
    makeBricks();
    health = 1;
  }

  void makeBricks() {
    PVector start = pos.copy();
    for (int r = 0; r < bricks.length; r++) {
      for (int c = 0; c < bricks[r].length; c++) {
        bricks[r][c] = new Brick(start, xsize, ysize);
        start.x+= brickSize;
      }
      start.y+= brickSize;
      start.x = pos.x;
    }
  }

  void display() {
    for (int r = 0; r < bricks.length; r++) {
      for (int c = 0; c < bricks[r].length; c++) {
        if (bricks[r][c] != null)
        {
          bricks[r][c].display();
        }
      }
    }
  }

  boolean processCollisions(Ball ball) {
    boolean hit = false;
    for (int r = 0; r < bricks.length; r++) {
      for (int c = 0; c < bricks[r].length; c++) {
        if (bricks[r][c] != null
          && ball.collisionCheck(bricks[r][c]))
        {
          bricks[r][c] = null;
          hit = true;
        }
      }
    }
    return hit;
  }
