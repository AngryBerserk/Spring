class Sprin{
  PVector anchor;
  float restLength;
  float k = 0.05;
  
  Sprin(float x, float y, int l){
   anchor = new PVector(x,y);
   restLength = l;
  }
  
  void connect(Bob b){
     PVector force = PVector.sub(b.location,anchor);
     float d = force.mag();
     float stretch = d - restLength;
     force.normalize().mult(-1 * k * stretch);
     b.applyForce(force);
  }
  
  void display(){
     //fill(100);
     rectMode(CENTER);
     rect(anchor.x, anchor.y, 10,10);
  }
  
  void displayLine(Bob b){
   stroke(255);
   line(b.location.x, b.location.y, anchor.x, anchor.y);
  }
  
}