class Asteroid extends Floater
{
private int rotSpeed;
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
  /*public int getxCorner() {return xCorners;}
  public int getyCorner()*/
  public double astSize;
public Asteroid() 
{
 astSize = ((int)(Math.random()*5)-2); //will change the size by multiplying it withthe corners
 rotSpeed = ((int)(Math.random()*5)-2);
  corners = 9;
     int rand = ((int)(Math.random()*10));
     int[] gF = { 15 -rand ,  20-rand, 15-rand, 10-rand,-5-rand, -10-rand, -25-rand, -30-rand, -20-rand};
     int[] gG = { 5 + rand,  -15 + rand, -35 + rand, -40 + rand,-40 + rand,-40 + rand, -35 + rand, -20 + rand, 0 + rand };
     xCorners = gF;
     yCorners = gG;
     myColor = color(128,128,128);  
     myCenterX = ((int)(Math.random()*1000));
     myCenterY = ((int)(Math.random()*1000));
     myDirectionX = ((int)(Math.random()*2)-1);
     myDirectionY = ((int)(Math.random()*2)-1);   
     myPointDirection = ((int)(Math.random()*5)-2);
}

public void move() 
{
  turn(rotSpeed);
  super.move();
}
}
