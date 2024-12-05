class Ball {
  int bally;
  int ballx;
  int ballsize;
  int xspeed = 5;
  int yspeed = 5;
  
  Ball(int ballx, int bally, int ballsize) {
    this.ballx = ballx;
    this.bally = bally;
    this.ballsize = ballsize;
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
    
    void display() {
      fill(255);
      circle(ballx, bally, ballsize); 
    }
}
