class Asteroid extends Floater
{
  private double rotSpeed; //randomly + or -
  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    rotSpeed = 3.0;
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    myXspeed = (Math.random()-0.3);
    myYspeed = (Math.random()-0.3);
    myPointDirection = (int)(Math.random()*360);
    myColor = color(256, 256, 256);
    stroke(myColor);
  }

  public double getXCenter() {
    return myCenterX;
  }

  public double getYCenter() {
    return myCenterY;
  }
  public void move() {
    super.move();
    turn(rotSpeed);
  }
}
