class Ball {
  PVector pos;
  float ballsize;
  float xspeed = 5;
  float yspeed = -5;
  
  Ball(PVector p, float size) {
    pos = new PVector(p.x, p.y);
    ballsize = size;
  }
  
  void move() {
  if (pos.x >= width - ballsize/2 ||
  pos.y <= ballsize/2) 
  { xspeed*= -1; }
  if (pos.y >= height - ballsize/2 ||
  pos.y <= ballsize/2) 
{ yspeed*= -1; }
}//move

boolean collisionCheck(Ball other) {
  return (this.pos.dist(other.pos) <= (this.ballsize/2 + other.ballsize/2));
}
    
    void display() {
      fill(255,0,0);
      circle(pos.x, pos.y, ballsize); 
    }
}
