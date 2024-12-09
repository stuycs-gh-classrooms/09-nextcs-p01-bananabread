class Ball {
  Pvector center;
  float ballsize;
  float xspeed = 5;
  float yspeed = -5;
  
  Ball(PVector p, float size) {
    center = new PVector(p.x, p.y);
    ballsize = size;
  }
  
  void move() {
  if (ballx >= width - ballsize/2 ||
  bally <= ballsize/2) 
  { xspeed*= -1; }
  if (bally >= height - ballsize/2 ||
      bally <= ballsize/2) 
      { yspeed*= -1; }
  ballx+= xspeed;
  bally+= yspeed;
}//move

boolean collisionCheck(Ball other) {
  return (this.center.dist(other.center) <= (this.ballsize

  void PlatformCollision(Platform Platform) {
      if ( ballx > platform.platx - platform.platwidth/2
      && ballx < platform.platx + platform.platwidth/2 
      && bally > platform.platy - ballsize/2)
    { yspeed *= -1; }
  }
    
    void display() {
      fill(255);
      circle(ballx, bally, ballsize); 
    }
}
