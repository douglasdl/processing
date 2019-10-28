class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
    
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);  
  }
  
  // Newton's 2nd Law (the begining)
  void applyForce(PVector force) {
    // F = m * a
    // if m = 1; a = F
    acceleration.add(force);
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
    ellipse(location.x, location.y, 48, 48);
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
