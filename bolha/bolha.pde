PImage flower;

Bubble b1;
Bubble b2;

void setup() {
  size(640, 360);
  flower = loadImage("flor.png");
  b1 = new Bubble(200, 300, 128);
  b2 = new Bubble(40, 300, 64);
}

void draw() {
  background(255);
  imageMode(CENTER);
  image(flower, width/2, height/2, 100, 100);
  b1.ascend();
  b1.display();
  b1.top();
 
  b2.ascend();
  b2.display();
  b2.top(); 
   
}
