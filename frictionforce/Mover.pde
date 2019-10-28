class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float radius;
    
  Mover() {
    location = new PVector(random(width),height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);  
    mass = random(1,5);
    radius = mass*20;
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
    ellipse(location.x, location.y, radius*2, radius*2);
  }
  
  void edges() {
    if(location.x > width-radius) {
      location.x = width-radius;
      velocity.x *= -1;
    }
    if(location.x < radius) {
      location.x = radius;
      velocity.x *= -1;
    }
    if(location.y > height-radius) {
      location.y = height-radius;
      velocity.y *= -1;
    }
    if(location.y < radius) {
      location.y = radius;
      velocity.y *= -1;
    }
  }
}
