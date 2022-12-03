class Spaceship extends Floater
{   

 public Spaceship(){
      myCenterX = (int)(Math.random()*401);
      myCenterY = (int)(Math.random()*401);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (double)(Math.random()*360);
      corners = 3;
      myColor = color(225,225,225);
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
    
    }
   public int getterX(){
     return (int)myCenterX;
   }
    public int getterY(){
     return (int)myCenterY;
   }
    public double getterSX(){
     return myXspeed;
   }
    public double getterSY(){
     return myYspeed;
   }
    public double getterDirection(){
     return myPointDirection;
   }
   public void hyperspace(){
      myCenterX = (int)(Math.random()*401);
      myCenterY = (int)(Math.random()*401);
      myPointDirection = (double)(Math.random()*360);
      myXspeed = 0;
      myYspeed = 0;
   }
}
