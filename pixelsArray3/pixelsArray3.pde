void setup() {
  size(600, 400);
  background(0);  
}

void draw() { 
  //for(int x = 0; x < width; x++) {
  //  set(x,200,color(255,0,0));
  //}

  loadPixels();
  for(int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      float d = dist(x, y, width/2, height/2);
      int loc = x + y * width; 
      pixels[loc] = color(d);  // Gradient radial
    }
  }
  updatePixels();
}
