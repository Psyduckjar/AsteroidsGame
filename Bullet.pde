class Bullet extends Floater 
{
  public Bullet(Spaceship ship)
{
    myCenterX = hi.getX();
    myCenterY = hi.getY();
    myPointDirection = hi.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + hi.myDirectionX;
    myDirectionY = 5*Math.sin(dRadians) + hi.myDirectionY;
    myColor = color(0,255,192); 
}
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
  fill(myColor);
  stroke(myColor);
  rect((float)myCenterX,(float)myCenterY,(float)5,(float)5);
}

public void move()
{
  myCenterX =+ myDirectionX;
  myCenterX =+ myDirectionY;
}
}

  
