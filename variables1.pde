// Types: int, float, char, byte, etc)

// 1) Declare
float circleX;
float circleY;
float ballSize;

// 1) Declare and 2) Initialize
float xspeed = 5;
float yspeed = 5;

void setup() {
  size(640, 360);
  
  // 2) Initialize
  circleX = random(0, width);
  circleY = height / 2;
  ballSize = 100;
}
void draw() {  
  // Drawing
  background(50);
  fill(255);
  ellipse(circleX, circleY, ballSize, ballSize);
  
  // Logic
  // 3) Use
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  
  if(circleX >= width) {
    xspeed *= -1;
    ballSize--;
  } else if(circleX <= 0) {
    xspeed *= -1;
    ballSize--;
  }
  //xspeed ++;
    
  if(circleY >= height) {
    yspeed *= -1;
    ballSize--;
  } else if(circleY <= 0) {
    yspeed *= -1;
    ballSize--;
  }
  //yspeed ++;
}

void mousePressed() {
  
}
