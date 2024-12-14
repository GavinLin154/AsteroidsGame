class Bullet extends Floater {
  Bullet(Spaceship theShip){
    myColor = color(255); 
    myCenterX = theShip.returnCenterX();
    myCenterY = theShip.returnCenterY();
    myXspeed = theShip.getXSpeed();
    myYspeed = theShip.getYSpeed();
    myPointDirection = theShip.returnPtDirection();
    accelerate(6);
  }  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }   
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }  
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}  
