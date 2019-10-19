void setup() {
  size(800,600);
  background(100, 200, 40);
}

void draw() {
  //background(100, 200, 40);  
  fill(100);              // Gray scale
  stroke(255, 0, 0);    // red, green, blue
  ellipseMode(CENTER);
  //ellipse(mouseX, mouseY, 80, 80);    // P1(x, y), width, height
  ellipse(mouseX, height-mouseY, 80, 80);    // P1(x, y), width, height
  
  // Draw while pressing the mouse
  if(mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);    // P1(x, y), width, height
  }
}
