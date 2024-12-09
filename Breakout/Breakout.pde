Brick bricks;
Platform platform;
Ball ball;
int rows = 5;
int cols = 10;
int hits = 1;

void setup() {
  size(600,400);
  ball = new Ball(300, 300, 10);
  platform = new Platform(300, 380, 50, 10);
}

void draw() {
  background(0);
  ball.display();
  platform.display();
}

void brickgrid(brick[][] bricks) {
  int X = 40;
  int Y = 40;
  int Width = 50;
  int Height = 10;
  
  for (int row = 0; row < bricks.length; row++) {
    for (int col = 0; col < bricks[r].length; col++) {
      bricks[row][col] = new Brick( X + Width * col,
      Y + Height * row,
      Width,
      Height,
      hits);
    }
  }


  
