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
      pixels[x + y * width] = color(0, 0, y/2);  // Gradient y/2; x/2
    }
  }
  updatePixels();
}
