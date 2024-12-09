//your variable declarations here

Spaceship one = new Spaceship(300,600);
Star[] family = new Star[800];
boolean acceleratePress = false;
boolean turnR = false;
boolean turnL = false;
boolean deceleratePress = false;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
double asteroidDistance;

public void setup() 
{
  size(800,800);
  background(0);
  for(int i = 0; i < family.length; i++) {
    family[i] = new Star();
  }  
  for(int i = 0; i < 13; i++) {
    asteroids.add(new Asteroid((int)(Math.random()*800),(int)(Math.random()*800)));
  }  
}
public void draw() 
{
  background(0);
  for(int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    asteroidDistance = dist((int)asteroids.get(i).getCenterX(), (int)asteroids.get(i).getCenterY(), (int)one.returnCenterX(), (int)one.returnCenterY());
    if(asteroidDistance <= 40) {
      asteroids.remove(i);
      i--;
      asteroids.add(new Asteroid((int)(Math.random()*800),(int)(Math.random()*800)));
    }  
  }  
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
     one.accelerate(0.25);
  }
  if(deceleratePress == true) { 
    if(one.getXSpeed() >= 0) {
      one.accelerate(-0.25);  
    }  
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
  if(key == 'w') {
     acceleratePress = true;  
  }  
  //decelerate
  if(key == 's') {
    if(one.getXSpeed() >= 0) {
       deceleratePress = true;
    }  
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
  if(key == 'w') {
    acceleratePress = false;  
  }
  if(key == 's') {
     deceleratePress = false;
  }  
}
