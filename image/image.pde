PImage img;

void setup() {
  size(600, 400);
  img = loadImage("hedgehog.jpg");  
}

void draw() {
  background(244);
  //image(img, mouseX, mouseY, 120, 80);
  
  tint(255, mouseX, mouseY);
  image(img, 0, 0);
  //fill(0,255,0);
  //ellipse(420,260,25,20);
  
  //image(img, 0, 0, mouseX, mouseY);
}
