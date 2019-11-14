Attractor a;
Mover m;



void setup() {
  size(800, 600);
  m = new Mover();
  a = new Attractor();
}

void draw() {
  background(255);
  
  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  
  a.drag();
  a.hover(mouseX, mouseY);
  
  //m.edges();
  a.display();
  m.display();
}

void mousePressed() {
  a.clicked(mouseX, mouseY);
}

void mouseReleased() {
  a.stopDragging();  
}
