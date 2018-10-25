class Star //note that this class does NOT extend Floater
{
  int xPosition, yPosition ;
  //myAngle;
  public Star() {
   xPosition = ((int)(Math.random()*1000));
   yPosition = ((int)(Math.random()*1000));
   // myAngle = 0;
  }   
    public void show() {
      fill(255,255,0);
      ellipse(xPosition,yPosition,20,20);
    }
}
