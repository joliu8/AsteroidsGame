Star[] sue;
Spaceship spade;
public void setup() {
  size(400, 400);
  background(0);
  sue = new Star[100];
  for (int i = 0; i<100; i++) {
    sue[i] = new Star();
  }
  spade = new Spaceship();
}
public void draw() { 
  background(0);
  for (int i =0; i<sue.length; i++) {
    sue[i].show();
  }

if (keyPressed){ //one key at a time
    if (key == 'a' || key == 'A') {
      spade.turn(-10);
    }
    
    if(key == 'w' || key=='W'){
     spade.accelerate(0.3); 
    }
    
    if(key == 'h'){
      spade.setXspeed(0);
      spade.setYspeed(0);
      spade.setCenterX((int)(Math.random()*400));
      spade.setCenterY((int)(Math.random()*400));
      spade.setPointDirection((int)(Math.random()*360));
    }
}
    
    spade.move();
    spade.show();
  }
