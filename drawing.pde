void setup() {
  size(800,600);
}

void draw() {
  line(10, 10, 50, 60);       // P1(x, y), P2(x, y) 
  
  rect(60, 60, 100, 100);      // P1(x, y), width, height
  
  rect(60, 200, 100, 100, 10); // P1(x, y), width, height, border
  
  point(20,40);                // P1(x, y)
  
  ellipse(220, 70, 80, 80);    // P1(x, y), width, height
}
