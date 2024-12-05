class Ball {
  int bally;
  int ballx;
  int ballsize;
  int xspeed;
  int yspeed;
  
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
}
