class Spaceship extends Floater  
{   
private int shieldTimer;   
private boolean shield;
public boolean shieldDude() { return shield; }
public int getTimer() { return shieldTimer;}
public void shieldActive(boolean x) {shield = x;}
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
   public void setColor(int x, int y, int z) { myColor = color(x, y, z); }
   public Spaceship() {
     shield = true;
     shieldTimer = 500;
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
public void show() {
  fill(myColor);   
    stroke(255);           
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  

}
public void show2() {
  noStroke();
  fill(0,255,255);
  ellipse((int)(getX()-10*Math.cos(getPointDirection()*(Math.PI/180))),(int)(getY()-10*Math.sin(getPointDirection()*(Math.PI/180))),15,15);
}
public void show3() {
  if( shieldTimer > 0 ) {
  shieldTimer--;
    fill(0, 150 - 1);
  tint(0, 255, 126, 0);
  ellipse((int)getX(),(int)getY(), 40, 40);
  } else { 
   shieldActive(false);
}
}
}
