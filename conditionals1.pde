void setup() {
  size(800,600);
}

void draw() {
  background(100, 200, 40);  
  if(mouseX > 200) {
    background(255, 100, 0);
  }
  
  stroke(255);
  line(200, 0, 200, height);
}
