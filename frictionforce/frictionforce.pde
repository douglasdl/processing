Mover[] movers;

void setup() {
  size(800, 600);
  movers = new Mover[5];
  for(int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  background(255);
  
  for(Mover m : movers) {
    PVector gravity = new PVector(0, 0.3);
    gravity.mult(m.mass);
    m.applyForce(gravity);
    
    if(mousePressed) {
      PVector wind = new PVector(0.2, 0);
      m.applyForce(wind);
    }
    
    // Apply friction
    if(keyPressed) {
      PVector friction = m.velocity.get();
      friction.normalize();
      float c = -0.1;
      friction.mult(c);
      m.applyForce(friction);
    }
    
    m.update();
    m.edges();
    m.display();
  }
}
