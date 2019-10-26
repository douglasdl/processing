void setup() {
  size(800,600);  // Size of the window
  background(100, 200, 40);  // Background Color
  
  // background(rgb)
  // background(rgb, alpha)
  // background(gray)
  // background(gray, alpha)
  // background(v1, v2, v3)
  // background(v1, v2, v3, alpha)
  // background(image)
}

void draw() {
  
  stroke(0, 0, 255);
  line(10, 10, 50, 60);       // P1(x, y), P2(x, y) 
  
  noFill();
  stroke(0, 255, 0);      // red, green, blue
  rect(60, 60, 100, 100);      // P1(x, y), width, height
  
  fill(255, 20, 20);      // red, green, blue
  noStroke();
  //rectMode(CENTER);
  rect(60, 200, 100, 100, 10); // P1(x, y), width, height, border
  
  stroke(255, 0, 255);    // red, green, blue
  point(20,40);                // P1(x, y)
  
  fill(100);              // Gray scale
  stroke(0, 255, 255);    // red, green, blue
  ellipse(220, 70, 80, 80);    // P1(x, y), width, height
}
