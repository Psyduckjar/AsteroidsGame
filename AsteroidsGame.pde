Spaceship hi = new Spaceship();
Star[] omg = new Star[50];

public void setup() 
{
  size(1000,1000);
  for(int i = 0; i < omg.length; i++) { //makes the stars
    omg = new Star[i];
  }   
  
}
public void draw() 
{
 
  for(int i = 0; i < omg.length; i++) { //puts the stars on the screen
    omg[i].move();
    omg[i].show();
  }
  
  
  
  
  
  hi.show();
}
public void keyTyped() {
  if(key == 'w') {
    hi.accelerate(8);
    hi.show();
  }
  if(key == 'd') {
    hi.turn(7);
    hi.show();
  }
  if(key == 'a') {
    hi.turn(-7);
    hi.show();
  }
  if(key == ' ') {
    hi.move();
    hi.show();
  }
}
  
