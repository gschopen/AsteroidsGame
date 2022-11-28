class Star{
  private int myX, myY, myWidth, myHeight;
  public Star(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
   // myWidth = 2;
  //  myHeight = 2;
    myWidth = (int)(Math.random()*2)+1;
    myHeight = (int)(Math.random()*2+1);
  }
