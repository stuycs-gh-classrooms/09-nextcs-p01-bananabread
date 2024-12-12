Brickgrid bricks;
Platform platform;
Ball ball;
int rows = 5;
int cols = 10;
int hits = 1;
int brickssize = 20;

void setup() {
  size(600, 400);
  ball = new Ball(new PVector(int(random(0, 600)), 320), 10);
  platform = new Platform(50, 20);
  bricks = new Brickgrid(rows, cols, brickssize);
}

void draw() {
  background(0);
  ball.display();
  platform.display();
  bricks.display();
  platform.move();
  boolean hit = balls.processCollisions(projectile);
  if (hit) {
    new Ball(new PVector(int(random(0, 600)), 320), 10);
  }
}
