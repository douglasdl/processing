void setup() {
  // Set the size of the window and the background color
  size(640, 360);
  background(50);
}

void draw() {
  stroke(255);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed() {
  background(50); // erase the line
}

void keyPressed() { // Any key
  background(0, 255, 0); // erase the line and change the background color
}
