class Bob {
  PVector location = new PVector();
  PVector speed = new PVector();
  PVector acceleration = new PVector();
  float mass = 1;
  float maxspeed = 20;

  void applyForce(PVector force) {
    PVector f = force.copy().div(mass);
    acceleration.add(f.div(mass));
  }
  
  void move(){
    speed.add(acceleration);
    location.add(speed.limit(maxspeed));
    acceleration.mult(0);
  }

  void display() {
    fill(255);
    stroke(0);
    ellipse(location.x, height - location.y, 32, 32);
  }
}