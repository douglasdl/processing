class Ball {
  PVector location;
  PVector velocity;
  float radius;
    
  Ball() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(2.5, -2);
    radius = 24;
  }
  
  void move() {
    location.add(velocity);
  }
  
  void bounce() {
    if((location.x > (width-radius)) || (location.x < (radius))) {
      velocity.x = velocity.x * -1;
    }  
    if((location.y > (height-radius)) || (location.y < (radius))) {
      velocity.y = velocity.y * -1;
    }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(255, 0, 0);
    ellipse(location.x, location.y, 2*radius, 2*radius);
  }
}
