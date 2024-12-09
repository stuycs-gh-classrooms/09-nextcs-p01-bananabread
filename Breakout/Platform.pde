class Platform{
  float platx;
  float platy;
  float platwidth;
  float platheight;
  
  Platform (float x, float y, float w, float h) {
    platx = x;
    platy = y;
    platwidth = w;
    platheight = h;
  }
  
  void move() {
    if (platx > 0 || platx + width < 800)
   { platx = mouseX; }
  }
  
  void display() {
    rect(platx, platy, platwidth, platheight);
  }
}
