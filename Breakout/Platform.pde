class Platform{
  PVector center;
  float platwidth;
  float platheight;
  
  Platform (float w, float h) {
    platwidth = w;
    platheight = h;
    center = new PVector(width / 2, 380);
  }
  
  void move() {
    if (platx > 0 || platx + width < 800)
   { center.x = mouseX; }
  }
  
  void display() {
    rect(center.x, center.y, platheight);
  }
}
