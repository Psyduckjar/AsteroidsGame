private int starNum = 50;
Spaceship hi = new Spaceship();
Star[] omg = new Star[starNum];
private boolean keyUp = false;
private boolean keyLeft = false;
private boolean keyDown = false;
private boolean keyRight = false;
public void setup() 
{
  size(1000,1000);
 // background(0);
  for(int i = 0; i < omg.length; i++) { //makes the stars
    omg[i] = new Star();
  }   
  
}
public void draw() 
{
 background(0);
  for(int i = 0; i < omg.length; i++) { //puts the stars on the screen
    omg[i].show();
  } 
//  hi.show();
//  hi.move();
  text(("myDirectionX:" + hi.getDirectionX()),30,30);
  text(("myDirectionY:" + hi.getDirectionY()),30,50);

   
   //controls
   if(keyUp == true) {
    hi.accelerate(.25);
    hi.show2();

  }
  if(keyRight == true) {
    hi.turn(7);

  }
  if(keyLeft == true) {
    hi.turn(-7);

  }
  if(keyDown == true) {
    hi.setDirectionX(0);
    hi.setDirectionY(0);
  }
  hi.show();
  hi.move();
  

}
public void keyPressed() {
  if(key == 'w') {
    keyUp = true;
  }
  if(key == 'd') {
    keyRight = true;
  }
  if(key == 'a') {
    keyLeft = true;
  }
 if(key == 's') {
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
}
public void keyReleased() 
{
  if(key == 'w') {
    keyUp = false;
  }
  if(key == 'd') {
    keyRight = false;
  }
   if(key == 'a') {
   keyLeft = false;
  }
  if(key == 's') {
    keyDown = false;
  }

}
  
