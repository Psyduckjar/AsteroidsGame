private int starNum = 50;
Spaceship hi = new Spaceship();
Star[] omg = new Star[starNum];
Bullet fresh = new Bullet(hi);
ArrayList<Asteroid> geeking = new ArrayList<Asteroid>();
//Asteroid[] geek = new Asteroid[50];
private int MAX = 0;
private boolean keyUp = false;
private boolean keyLeft = false;
private boolean keyDown = false;
private boolean keyRight = false;
public void setup() 
// create a laser beam that you can fire, consisting of a little charge (a bar that you'd need to fill up
// before you can fire it) followed by a huge beam coming from the center tip
{
  size(1000,1000);
 // background(0);
  for(int i = 0; i < omg.length; i++) { //makes the stars
    omg[i] = new Star();
  }   
  for(int i = 0; i < 50; i++) {
    geeking.add(new Asteroid());
  }
 /* for(int i = 0; i < geek.length; i++) {
    geek[i] = new Asteroid();
  }*/
  
}
public void draw() 
{
 background(0);
  for(int i = 0; i < omg.length; i++) { //puts the stars on the screen
    omg[i].show();
  } 
 for(int i = 0; i < geeking.size(); i++) {
    geeking.get(i).move();
    geeking.get(i).show();
  }

  text(("myDirectionX:" + hi.getDirectionX()),30,30);
  text(("myDirectionY:" + hi.getDirectionY()),30,50);
  
  /*for(int i = 0; i < geeking.size(); i++) {
  if(dist(hi.getX(), hi.getY(), geeking.get(i).getX(), geeking.get(i).getY()) < 20) {
    hi.remove;
  }
  }*/
   
   
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
 /* if (key == 'l')
  {
    MAX = MAX + 1;
      if(MAX == 10) { MAX = 0; }
    fire();
  }*/
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

//creates a bullet
//if key button is pressed, add a value(will be max point) and a for loop to create 2 instances, figure out the equation for the paremeter
/*public void fire() 
{
  for(int i = 0; i < MAX;i++)
  {
    fresh[i] = new Bullet(hi.getX()+5,hi.getY()+5);
    fresh[i + 1] = new Bullet(hi.getX()+5,hi.getY()-5);
    fresh[i].move();
    fresh[i+1].move();
    fresh[i].show();
    fresh[i+1].show();
}
}
*/
