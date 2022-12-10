class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getterX();
    myCenterY = theShip.getterY();
    myXspeed = theShip.getterSX();
    myYspeed = theShip.getterSY();
    myPointDirection = theShip.getterDirection();
    accelerate(6);
  }
  
  public void show(){
    fill(225,0,0);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public void move ()
  {        
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }  
  public boolean tooClose(int shipX, int shipY) {
    double distance = dist((float)myCenterX, (float)myCenterY, (float)shipX, (float)shipY);
    return distance < 20;
  }
  
  
}
