void setup() {
  size(640, 360);
}

void draw() {  
  background(255); 
  strokeWeight(2);
  stroke(0);
  noFill();
  
  translate(width/2, height/2); // move 0,0 to the center of the screen
  ellipse(0,0,4,4);
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  mouse.sub(center);
  mouse.mult(3);
  
  line(0,0,mouse.x,mouse.y);
  
}
