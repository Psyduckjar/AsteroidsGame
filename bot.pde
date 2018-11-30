class bot extends Spaceship {
  ArrayList<Bullet> omg = new ArrayList<Bullet>();
  int cycle = ((int)(Math.random() * 4));
boolean alive = true;  
public boolean botAlive() { return alive; }
public void isAlive(boolean x) { alive = x; }

  public bot() {
    //bot will spawn from the 4 corners on the map
    if (cycle == 1) 
    {
      myCenterX = -10;
      myCenterY = -10;
    }
    if (cycle == 2) 
    {
      myCenterX = 1010;
       myCenterY = -10;
    }
    if (cycle == 3) 
    {
      myCenterX = 1010;
      myCenterY = 1010;
    } 
    if (cycle == 4)
    {
      myCenterX = -10;
      myCenterY = 1010;
    }
    corners = 11;
    int[] xC = {0, 3, 13, 2, 0, -2, -5, -6, -6, -5, -3};
    int[] yC = {-7, -5, 0, 5, 7, 6, 2, 0, -2, -4, -6};
    xCorners = xC;
    yCorners = yC;
    myPointDirection = (Math.random()*360);
    ;
  }
  public void findshoot() {
    double x = myCenterX - hi.getX();
    double angletemp = Math.acos(x/dist((float)myCenterX, (float)myCenterY, (float)hi.getX(), (float)hi.getY()));
    if (myCenterY - hi.getY() >= 0) {
      myPointDirection = 360 - angletemp *180/Math.PI;
    } else {
      myPointDirection = angletemp * 180 / Math.PI;
    }
  }
  public void shoot() {
    int timer = 200;
    while(alive) 
    {
      if(timer > 0)
      {
      for(int i = 0; i < 3; i++) {
        omg.add(new Bullet(bot));
      }
      timer--;
      else {
       timer = 0;
      }
      }
    }
  }
      
     
}
  
