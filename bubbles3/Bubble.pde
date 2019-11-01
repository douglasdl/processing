class Bubble {
  float x;
  float y;
  float diameter;
  PImage img;
  
  Bubble(PImage tempImg, float tempX, float tempY, float tempD) {
    x = tempX;
    y = tempY;
    diameter = tempD;
    img = tempImg;
  }
  
  void ascend() {
    y--;
    x = x+ random(-2,2);
  }
  
  void display() {
    //stroke(255);
    //fill(255);
    //ellipse(x, y, diameter, diameter);
    imageMode(CENTER);
    image(img, x, y, diameter, diameter);
  }
  
  void top() {
    x = constrain(x, diameter/2, (width-diameter));
    y = constrain(y, diameter/2, (height-diameter));
  }
}
