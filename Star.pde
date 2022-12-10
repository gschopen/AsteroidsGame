class Star{
  private int myX, myY, myWidth, myHeight;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*600);
   // myWidth = 2;
  //  myHeight = 2;
    myWidth = (int)(Math.random()*2)+1;
    myHeight = (int)(Math.random()*2+1);
  }
  
  public void show(){
   // fill(225,225,225);
    ellipse(myX,myY,myWidth,myHeight);
  }
}



