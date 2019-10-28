class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
    
  Mover() {
    location = new PVector(random(width),height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);  
    mass = random(1,5);
  }
  
  // Newton's 2nd Law
  void applyForce(PVector force) {
    // F = m * a
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    //velocity.limit(5);  
    acceleration.mult(0);
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, mass*20, mass*20);
  }
  
  void edges() {
    if(location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if(location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if(location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
    if(location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
}
