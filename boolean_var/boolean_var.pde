boolean going = false;
float circleX;
float circleY;
float ballSize;
float xspeed = 5;
float yspeed = 5;

void setup() {
  size(640, 360);
  
  circleX = random(0, width);
  circleY = height / 2;
  ballSize = 100;
}
void draw() {  
  background(50);
  fill(255);
  ellipse(circleX, circleY, ballSize, ballSize);
  
  if(going) {
    circleX = circleX + xspeed;
    circleY = circleY + yspeed;
  }
  
  if((circleX >= width) || (circleX <= 0)) {
    xspeed *= -1;
    ballSize--;
  }
    
  if((circleY >= height) || (circleY <= 0)) {
    yspeed *= -1;
    ballSize--;
  }
}

void mousePressed() {
  going = !going;
}
