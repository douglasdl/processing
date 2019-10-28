Mover m;

void setup() {
  size(800, 600);
  m = new Mover();
}

void draw() {
  background(255);
  
  PVector f = new PVector(0.2, 0.1);
  m.applyForce(f);
  
  m.update();
  m.edges();
  m.display();
}
