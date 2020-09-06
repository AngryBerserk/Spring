Bob bob;
Sprin spring;

PVector gravity = new PVector(0,0.01);

void setup(){
  size(800,600);
  bob = new Bob();
  spring = new Sprin(width/2, height/2, 100);
}

void draw(){
  fill(255, 100);
  rectMode(CORNER);
  rect(0,0, width, height);
  bob.applyForce(gravity);
  spring.connect(bob);
  bob.move();
  bob.display();
  spring.display();
}