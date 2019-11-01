PImage flower;

Bubble[] bubbles = new Bubble[5];

void setup() {
  size(640, 360);
  flower = loadImage("flor.png");
  for(int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(100+i*100,300, random(32, 72));  
  }
}

void draw() {
  background(255);
  imageMode(CENTER);
  //image(flower, width/2, height/2, 100, 100);
  for(int i = 0; i < bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}
