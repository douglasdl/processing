void setup() {
  size(800,600);
}

void draw() {
  background(100, 200, 40);
  
  // Dependent ifs
  if(mouseX > 400) {
    background(255, 100, 0);
  } else if(mouseX > 200) {
    background(0, 100, 255);
  }
  
  // Independent Ifs
  if(mouseX > 400) {
    fill(255, 0, 0);
    rect(300, 100, 50, 50);
  }
  if(mouseX > 200) {
    fill(0, 255, 0);
    rect(300, 300, 50, 50);
  }
  
  stroke(255);
  line(200, 0, 200, height);
  
  line(400, 0, 400, height);
}
