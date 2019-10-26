boolean going = false;
float circleX;
float circleY;
float circleRadius;
float xspeed = 2;
float yspeed = 2;

void setup() {
  size(640, 360);
  
  circleX = random(0, width);
  circleY = height / 2;
  circleRadius = 16;
}
void draw() {  
  background(50);
  fill(255);
  ellipse(circleX, circleY, 2*circleRadius, 2*circleRadius);
  
  if(going) {
    circleX = circleX + xspeed;
    circleY = circleY + yspeed;
  }
  
  if((circleX > (width-circleRadius)) || (circleX < (circleRadius))) {
    xspeed *= -1.1;
  }
    
  if((circleY > (height-circleRadius)) || (circleY < (circleRadius))) {
    yspeed *= -1.05;
  }
}

void mousePressed() {
  going = !going;
  xspeed = 2;
  yspeed = 2;
}
