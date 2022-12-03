Star[] chub = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void keyPressed(){
  //frameRate(100);
  if(key == 'd'){//right turn
  Rex.turn(15);}
  
  if(key == 'a'){//left turn
  Rex.turn(-15);}
  
  if(key == 'w'){
  Rex.accelerate(0.2);
forward = true;
fill(225,0,0);
ellipse((int)Rex.getterX(),(int)Rex.getterY(),10,10);
}

  if(key == 'q'){
    Rex.hyperspace();
    background(0,0,225);
  }
}

