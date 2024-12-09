class Spaceship extends Floater  
{   
  public Spaceship(double xPos, double yPos) {  
    corners = 4;  
    xCorners = new int[] {40,0,10,0};   
    yCorners = new int[] {0,15,0,-16};   
    myColor = color(255);;   
    myCenterX = xPos;
    myCenterY = yPos; 
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = 0;
  }
  public void setCenterXCord(double xPos) {
    myCenterX = xPos; 
  }
  public void setCenterYCord(double yPos) {
    myCenterY = yPos;
  }
  public void setXSpeed(double xSpeed) {
    myXspeed = xSpeed;
  }
  public void setYSpeed(double ySpeed) {
    myYspeed = ySpeed;
  }
  public double getXSpeed() {
    return myXspeed;
  }  
  public double returnCenterX() {
    return myCenterX; 
  }  
  public double returnCenterY() {
    return myCenterY; 
  }  
}
 
