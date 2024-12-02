//your variable declarations here

Spaceship one = new Spaceship(300,600);
Star[] family = new Star[800];
boolean acceleratePress = false;
boolean turnR = false;
boolean turnL = false;

public void setup() 
{
  size(800,800);
  background(0);
  for(int i = 0; i < family.length; i++) {
    family[i] = new Star();
  }  
}
public void draw() 
{
  background(0);
  for(int i = 0; i < family.length; i++) {
    family[i].show();
  }
  if(turnL == true) {
    one.turn(-5);
  }
  if(turnR == true) {
    one.turn(5);
  }
  if(acceleratePress == true) {
    one.accelerate(0.5);
  }
  one.show();
  one.move();
}

public void keyPressed() {
  //turn left
  if(key == 'a') {
    turnL = true;
  }  
  //turn right
  if(key == 'd') {
    turnR = true;
  }
  //accelerate
  if(key == 'x') {
    acceleratePress = true;
  }  
  //hyperspace
  if(key == 'z') {
    one.setCenterXCord(Math.random() * 800);
    one.setCenterYCord(Math.random() * 800);
    one.turn(Math.random() * 360);
    one.setXSpeed(0);
    one.setYSpeed(0);
  }  
} 

public void keyReleased() {
  if(key == 'a') {
    turnL = false;
  }
  if(key == 'd') {
    turnR = false;
  }
  if(key == 'x') {
    acceleratePress = false;
  }
}
