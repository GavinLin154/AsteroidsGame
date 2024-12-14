//your variable declarations here

Spaceship one = new Spaceship(300,600);
Star[] family = new Star[800];
boolean acceleratePress = false;
boolean turnR = false;
boolean turnL = false;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
double asteroidDistance;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
double bulletDistance;
int asteroidsDestroyedCounter;


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
  textSize(30);
  if(asteroidsDestroyedCounter < 100) {
    text("Asteroids Destroyed: " + asteroidsDestroyedCounter, 250,50);
  } else {
    text("Asteroids Destroyed: " + asteroidsDestroyedCounter, 240,50);
  }
  for(int i = 0; i < family.length; i++) {
    family[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    asteroidDistance = dist((int)asteroids.get(i).getCenterX(), (int)asteroids.get(i).getCenterY(), (int)one.returnCenterX(), (int)one.returnCenterY());
    if(asteroidDistance <= 40) {
      asteroids.remove(i);
      asteroidsDestroyedCounter++;
      i--;
      asteroids.add(new Asteroid((int)(Math.random()*800),(int)(Math.random()*800)));
    }  
  }  
  for(int i = 0; i < bullets.size(); i++) {
    bullets.get(i).show();
    bullets.get(i).move();
    for(int j = 0; j < asteroids.size(); j++) {
      bulletDistance = dist((int)asteroids.get(j).getCenterX(), (int)asteroids.get(j).getCenterY(), (int)bullets.get(i).getCenterX(),(int)bullets.get(i).getCenterY());
      if(bulletDistance <= 30) {
        bullets.remove(i);
        asteroids.remove(j);
        asteroidsDestroyedCounter++;
        asteroids.add(new Asteroid((int)(Math.random()*800), (int)(Math.random()*800)));
        break;
      }
    } 
  }  
  if(turnL == true) {
    one.turn(-4);
  }
  if(turnR == true) {
    one.turn(4);
  }
  if(acceleratePress == true) {
     one.accelerate(0.08);
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
  //hyperspace
  if(key == 'z') {
    one.setCenterXCord(Math.random() * 800);
    one.setCenterYCord(Math.random() * 800);
    one.turn(Math.random() * 360);
    one.setXSpeed(0);
    one.setYSpeed(0);
  }  
  if(key == 'f') {
    bullets.add(new Bullet(one));
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
}
