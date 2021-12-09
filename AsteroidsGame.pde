Star[] sue;
Spaceship spade;
Asteroid ash;
ArrayList <Asteroid> ashes = new ArrayList <Asteroid>();

public void setup() {
  size(400, 400);
  background(0);
  sue = new Star[100];
  for (int i = 0; i<100; i++) {
    sue[i] = new Star();
  }
  spade = new Spaceship();

  for (int i = 0; i<10; i++) {
    ashes.add(new Asteroid());
  }
}
public void draw() { 
  background(0);
  for (int i =0; i<sue.length; i++) {
    sue[i].show();
  }

  for (int i = 0; i< ashes.size(); i++) {
    ashes.get(i).show();
    ashes.get(i).move();
    float d = dist((float)spade.getXCenter(), (float)spade.getYCenter(), (float)ashes.get(i).getXCenter(), (float)ashes.get(i).getYCenter()); 
    if (d < 10){
      ashes.remove(i);
    }
  }

  if (keyPressed) { //one key at a time
    if (keyCode == LEFT) {
      spade.turn(-10);
    }

    if (keyCode == RIGHT) {
      spade.turn(10);
    }

    if (key == 'a' || key=='A') {
      spade.accelerate(0.3);
    }

    if (key == 'h' || key == 'H') {
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
