class Star //note that this class does NOT extend Floater
{
  double xPosition, yPosition, myAngle;
  public Star() {
    xPosition = 0;
    yPosition = 0;
   // myAngle = 0;
  }   
    
    public void move() {
      xPosition = ((Math.random()*1000));
      yPosition = ((Math.random()*1000));
     // myAngle //hmm 
    }
  
  
    public void show() {
    }
}
