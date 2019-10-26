Ball b;
boolean going = false;

void setup() {
  size(640, 360);
  b = new Ball();
}

void draw() {  
  background(50); 
  if(going) {
    b.move();
    b.bounce();
  }
  b.display();
}

void mousePressed() {
  going = !going;
}
