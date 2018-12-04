//make a new class to so that you could pick up shield perks that would randomly spawn on the map


//add a LONG timer that will spawn an creasg amount of drones every "wave"
//variable for max drone count that will add
//variable for timer to crease


class Bot extends Spaceship {
  private int shieldTimer = 300;
  private boolean alienAlive = true;
  private int timer;
  private boolean alienShield = true;
  ArrayList<Bullet> alBullet = new ArrayList<Bullet>();
  private  int cycle = ((int)(Math.random() * 4));
  private int moveTimer;
  private boolean alive = true;  
  public boolean botAlive() { return alive; }
  public boolean isAlive() { return alienAlive;}
  public void setAlive(boolean x) {alienAlive = x;}
  public void setShield(boolean x) {alienShield = x;}
 public boolean isShield() { return alienShield;}
 


  public Bot() {
    moveTimer = 100;
    timer = 0;
    //bot will spawn from the 4 corners on the map
    if (cycle == 1) 
    {
      myCenterX = -900 + (Math.random() * -10);
      myCenterY = -900 + (Math.random() * -10);
    }
    if (cycle == 2) 
    {
      myCenterX = 900 + (Math.random() * 10);
      myCenterY = 1 + (Math.random() * 10);
    }
    if (cycle == 3) 
    {
      myCenterX = 900 + (Math.random() * 10);
      myCenterY = 900 + (Math.random() * 10);
    } 
    if (cycle == 4)
    {
      myCenterX = 1 + (Math.random() * 10);
      myCenterY = 900 + (Math.random() * 10);
    }
    corners = 11;
    int[] xC = {0, 3, 13, 2, 0, -2, -5, -6, -6, -5, -3};
    int[] yC = {-7, -5, 0, 5, 7, 6, 2, 0, -2, -4, -6};
    xCorners = xC;
    yCorners = yC;
    myPointDirection = (Math.random()*360);
  }
  public void findshoot() {
    double x =  hi.getX() - myCenterX;
    double angletemp = (Math.acos(x/dist((float)myCenterX, (float)myCenterY, (float)hi.getX(), (float)hi.getY())));
    if (myCenterY - hi.getY() >= 0) {
      myPointDirection = (360 - angletemp *180/Math.PI);
    } else {
      myPointDirection = (angletemp * 180 / Math.PI);
    }
  }

  public void shoot() {
    //shoots the bullet every second

    if (timer >= 300) {
      for (int i = 0; i < alien.size(); i++) {
        if (alien.get(i).isAlive()) {
          alBullet.add(new Bullet(alien.get(i)));
        }
      }
      timer = 0;
    } else { 
      timer++;
    } 

    for (int i = 0; i < alBullet.size(); i++) {
      alBullet.get(i).setColor(255, 0, 0);
      alBullet.get(i).move();
      alBullet.get(i).show();
    }
 
  }


  public void autoMove() 
  {
    if (moveTimer >= 300) {
      for (int i = 0; i < alien.size(); i++) {
        alien.get(i).setDirectionX(0);
        alien.get(i).setDirectionY(0);
        alien.get(i).accelerate(2);
      }
      moveTimer = 0;
    } else {
      moveTimer++;
    }
  }


  
 public void alienShield() 
 {
   if( shieldTimer > 0 ) {
  shieldTimer--;
    fill(0, 150 - 1);
  tint(0, 255, 126, 0);
  ellipse((int)getX(),(int)getY(), 20, 20);
  } else { 
   setShield(false);
  }
 }
}
