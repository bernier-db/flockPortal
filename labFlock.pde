Flock flock;
Portal[] portals = new Portal[2];
final char reset = 'r';
final char portalKey = ' ';


void setup() {
  size(640, 360);
  flock = new Flock();
   portals[0] = new Portal(true);
  portals[1] = new Portal(false);
  // Add an initial set of boids into the system
  for (int i = 0; i < 150; i++) {
    flock.addBoid(new Boid(width/2,height/2, portals));
  }
  
 
  
}

void draw() {
  background(50);
  portals[0].display();
  portals[1].display();
  
  flock.run();  
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY, portals));
}

void keyPressed(){
  switch(key){
    case reset:
    setup();
    break;
    case portalKey:
    portals[0].toggleVisible();
    portals[1].toggleVisible();
    break;
  }
}