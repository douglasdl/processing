class Attractor {
  PVector location;
  PVector dragOffset;
  float mass;
  boolean dragging;
  boolean rollover;
  
  Attractor() {
    location = new PVector(width/2, height/2);
    mass = 20;
    dragOffset = new PVector(0.0, 0.0);
  }
  
  PVector attract(Mover m) {
    // Direction of the force
    PVector force = PVector.sub(location, m.location);
    float d = force.mag();
    
    d = constrain(d, 5, 25);
    
    force.normalize();
    
    // Magnitude of the force
    float strength = (G * mass * m.mass) / (d * d);
    
    // Putting magnitude and direction together
    force.mult(strength);
    
    return force;
  }
  
  void display() {
    ellipseMode(CENTER);
    strokeWeight(4);
    stroke(0);
    if(dragging) fill (50);
    else if(rollover) fill (100);
    else fill(175,200);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
  
}
