// and &&, or ||, not !

void setup() {
  size(800,600);
}

void draw() {
  background(100, 200, 40);
  
  fill(120, 220, 60);
  if((mouseX > 100) && (mouseX < 200)) {
    background(255, 0, 0);
  }
  
  
  stroke(255);
  line(100, 0, 100, height);
  line(200, 0, 200, height);
}
