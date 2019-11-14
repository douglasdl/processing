float angle = 0.0;
float angularVelovity = 0.0;
float angularAcceleration = 0.001;


void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  
  angularAcceleration = map(mouseX, 0, width, -0.001, 0.001);
  
  angle += angularVelovity;
  angularVelovity += angularAcceleration;
  
  rectMode(CENTER);
  stroke(0);
  fill(127);
  translate(width/2, height/2);
  //rotate(PI/4);
  rotate(angle);
  rect(0, 0, 64, 36);
}
