class Star //note that this class does NOT extend Floater
{
  private double xPos, yPos, myColor;
  public Star() {
    xPos = Math.random() * 800;
    yPos = Math.random() * 800;
    myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }  
  public void show() {
    noStroke();
    fill((int)myColor);
    ellipse((float)xPos, (float)yPos, 3, 3);
  }   
}
