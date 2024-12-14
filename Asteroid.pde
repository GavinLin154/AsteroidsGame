class Asteroid extends Floater {
  protected double rotSpeed;
  public Asteroid(int xPos, int yPos) {
    corners = 18;  //the number of corners, a triangular floater has 3   
    xCorners = new int[] {0,15,22,25,27,24,19,16,14,8,0,-13,-18,-20,-20,-23,-20,-15};   
    yCorners = new int[] {22,28,26,19,12,-13,-15,-17,-13,-12,-16,-18,-17,-15,0,12,18,24};   
    myColor = color(129, 133, 137);   
    myCenterX = xPos;
    myCenterY = yPos; //holds center coordinates   
    rotSpeed = (int)(Math.random() * 8); //holds the speed of travel in the x and y directions   
    myPointDirection = (Math.random() * 2 * PI);
    myXspeed = (Math.random() * 3) - 1;
    myYspeed = (Math.random() * 5) - 1; 
    if(myXspeed == 0) {
      myXspeed = 1;
    }
    if(myYspeed == 0) {
      myYspeed = 1;
    }
  }   
  public void move() {       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
    turn(rotSpeed);
  }  
  public double getCenterX() {
    return myCenterX;
  }  
  public double getCenterY() {
    return myCenterY;
  }
}  
 
  
  
  
  
  
  
  
 
