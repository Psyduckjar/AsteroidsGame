class Spaceship extends Floater  
{   
   public void setX(int x) { myCenterX = x; } 
   public int getX() {return (int)myCenterX;}   
   public void setY(int y) { myCenterY = y; }   
   public int getY() {return (int)myCenterY;}   
   public void setDirectionX(double x){myDirectionX = x;}   
   public double getDirectionX() {return myDirectionX;}   
   public void setDirectionY(double y) {myDirectionY = y;}   
   public double getDirectionY() {return myDirectionY; }   
   public void setPointDirection(int degrees) {myPointDirection = degrees;}   
   public double getPointDirection() {return myPointDirection;}
   public Spaceship() {
     corners = 8;
     int[] xF = {-15,0,7,1,16,1,7,0};
     int[] xG = { 0,15,13,9,0,-9,-13,-15};
     xCorners = xF;
     yCorners = xG;
     myColor = color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
     myDirectionX = 0;
     myDirectionY = 0;
     myCenterX = 500;
     myCenterY = 500;
     myPointDirection = 0;    
}
}
