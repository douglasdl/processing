void setup() {
  size(800,600);
}

void draw() {
  background(100, 200, 40);
  
  fill(120, 220, 60);
  if(mouseX > width/2) {
    if(mouseY > height/2) {
      rect(width/2, height/2, width/2, height/2);
    } else { 
      rect(width/2, 0,  width/2, height/2);
    }
  } else {
    if(mouseY > height/2) {
      rect(0, height/2,  width/2, height/2);
    } else {
      rect(0, 0,  width/2, height/2);
    }
  }
  
  
  stroke(255);
  line(0, height/2, width, height/2);
  
  line(width/2, 0, width/2, height);
}
