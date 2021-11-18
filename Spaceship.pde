class Spaceship extends Floater  
{   
  //your code here
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myCenterX = 200;
    myCenterY = 200;
    myXspeed= 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = color(256, 256, 256);
  }

  public void setXspeed(double x) {
    myXspeed = x;
  }

  public void setYspeed(double x) {
    myYspeed = x;
  }

  public void setCenterX(double x) {
    myCenterX = x;
  }

  public void setCenterY(double x) {
    myCenterY = x;
  }
  
    public void setPointDirection(double x) {
    myPointDirection = x;
  }
}
