class Bullet extends Floater 
{
  int bulletTimer;
  boolean bulletAlive;
  public Bullet(Spaceship ship)
{
    bulletTimer = 500;
    bulletAlive = true;
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + hi.myDirectionX;
    myDirectionY = 5*Math.sin(dRadians) + hi.myDirectionY;
    myColor = color(0,255,192); 
}
  public void setColor(int x, int b, int c) {myColor = color(x,b,c);}
  public boolean isBulletAlive() {return bulletAlive;}
  public void setX(int x)  {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y)  {myCenterY = y;}
  public int getY()  {return (int)myCenterY;}
  public void setDirectionX(double x)  {myDirectionX = x;} 
  public double getDirectionX()  {return myDirectionX;}
  public void setDirectionY(double y)  {myDirectionY = y;}
  public double getDirectionY()  {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}

public void show()
{
  if(bulletTimer > 0) {
   bulletTimer--;
  fill(myColor);
  stroke(myColor);
  ellipse((float)myCenterX,(float)myCenterY,(float)5,(float)5);
  } else {
    bulletAlive = false;
  }
}

/*public void move()
{
  myCenterX =+ myDirectionX;
  myCenterX =+ myDirectionY;
}
}
*/

}  
