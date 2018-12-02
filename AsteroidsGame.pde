private int starNum = 50;
private boolean alive = true; 
//private boolean shield = true;
Spaceship hi = new Spaceship();
Star[] omg = new Star[starNum];
//Bullet fresh = new Bullet(hi);
ArrayList<Bullet> moment = new ArrayList<Bullet>();
ArrayList<Asteroid> geeking = new ArrayList<Asteroid>();
//Asteroid[] geek = new Asteroid[50];
private boolean keyUp = false;
private boolean keyLeft = false;
private boolean keyDown = false;
private boolean keyRight = false;
private boolean fire = false;
private boolean alienAlive = true;
private int numEnemies = 4;



ArrayList<bot> alien = new ArrayList<bot>();


public void setup() 
  // create a laser beam that you can fire, consisting of a little charge (a bar that you'd need to fill up
  // before you can fire it) followed by a huge beam coming from the center tip
{
  size(1000, 1000);
  // background(0);
  for (int i = 0; i < omg.length; i++) { //makes the stars
    omg[i] = new Star();
  }   
  for (int i = 0; i < 50; i++) {
    geeking.add(new Asteroid());
  }
  //ADDING BOT********************************



  for (int i = 0; i < numEnemies; i++) 
  {
    alien.add( new bot());
  }

  //bad code **********************************
}
public void draw() 
{
  background(0);
  // Drawing the stars & asteroids
  for (int i = 0; i < omg.length; i++) { //puts the stars on the screen
    omg[i].show();
  } 
  for (int i = 0; i < geeking.size(); i++) {
    geeking.get(i).move();
    geeking.get(i).show();
  }
  // Creating the shooting function 
  if (fire) {
    for (int i = 0; i < moment.size(); i++) {        
      moment.get(i).move();
      moment.get(i).show();
    }
  }
  //bullet & asteroid collision
  for (int k = 0; k < geeking.size(); k++) {
    for (int i = 0; i < moment.size(); i++) {
      if (dist(moment.get(i).getX(), moment.get(i).getY(), geeking.get(k).getX(), geeking.get(k).getY()) < 35) {
        if (moment.get(i).isBulletAlive()) {
          moment.remove(i);
          geeking.remove(k);
          break;
        }
      }
    }
  }
  //*********************************************************

  //SHOWING THE BOTS

  if (geeking.size() == 0) {
    for (int i = 0; i < alien.size(); i++) 
    {
     
      
      if(alien.get(i).isAlive())
      {  
      alien.get(i).show();     
      }
        alien.get(i).findshoot();
        alien.get(i).shoot();
        alien.get(i).autoMove();
        alien.get(i).move();
        
          alien.get(i).alienShield();
        
      
    }
  }
 
 
 //collision with your bullets & the alien
 
  for (int k = 0; k < alien.size(); k++) {
    if(alien.get(k).isAlive()) {
    for (int i = 0; i < moment.size(); i++) {
      if (dist(moment.get(i).getX(), moment.get(i).getY(), alien.get(k).getX(), alien.get(k).getY()) < 15) {
        if (moment.get(i).isBulletAlive()) {
          moment.remove(i);
          if(!alien.get(k).isShield()){
          alien.get(k).setAlive(false);
          }
          break;
        }
      }
    }
  }
 }
 
//collision with their bullets and u

for(int i = 0; i < alien.size();i++) {
  for(int k = 0; k < alien.get(i).alBullet.size();k++) {
    if(dist(alien.get(i).alBullet.get(k).getX(), alien.get(i).alBullet.get(k).getY(), hi.getX(), hi.getY()) < 35) {
      alien.get(i).alBullet.remove(k);
      if(!hi.shieldDude()) {
        
        alive = false;
        //&& alien.get(i).alBullet.get(k).isBulletAlive() this condition gives me an error
      }
      break;
    }
  }
}
      
    






  //******************************************************


  //coords & shield timer display
  text(("myDirectionX:" + hi.getDirectionX()), 30, 30);
  text(("myDirectionY:" + hi.getDirectionY()), 30, 50);
  if (hi.getTimer() > 0) {
    text(("ShieldTimer: " +  hi.getTimer()), 30, 70);
  }
  // ***********************************
  // collision logic
  for (int i = 0; i < geeking.size(); i++) {
    if (dist(hi.getX(), hi.getY(), geeking.get(i).getX(), geeking.get(i).getY()) < 35) {
      geeking.remove(i);
      if (!hi.shieldDude()) {
        alive = false;
      }
    }
  }





  //controls
  if (keyUp == true) {
    hi.accelerate(.25);
    if (alive) {
      hi.show2();
    }
  }
  if (keyRight == true) {
    hi.turn(7);
  }
  if (keyLeft == true) {
    hi.turn(-7);
  }
  if (keyDown == true) {
    hi.setDirectionX(0);
    hi.setDirectionY(0);
  }
  if (alive) {

    hi.show();
    hi.move();
  }
  if (hi.shieldDude()) {
    hi.show3();
  }
}
public void keyPressed() {
  if (key == 'w') {
    keyUp = true;
  }
  if (key == 'd') {
    keyRight = true;
  }
  if (key == 'a') {
    keyLeft = true;
  }
  if (key == 's') {
    keyDown = true;
  }
  if (key == 'h')
  {
    hi.setX((int)(Math.random()*width));
    hi.setY((int)(Math.random()*height));
    hi.setDirectionX(0);
    hi.setDirectionY(0);
    hi.setPointDirection((int)(Math.random()*360));
  }
  if (key == 'l')
  {
    fire = true;
    if (alive) {
      moment.add(new Bullet(hi));
    }
  }
  if (key == BACKSPACE) {
    alive = true;
  }
}
public void keyReleased() 
{
  if (key == 'w') {
    keyUp = false;
  }
  if (key == 'd') {
    keyRight = false;
  }
  if (key == 'a') {
    keyLeft = false;
  }
  if (key == 's') {
    keyDown = false;
  }
}
