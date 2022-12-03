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

public void setup(){
  size(400,400);
  Rex = new Spaceship();
//  background(0,0,0);
  for(int i = 0; i < chub.length; i++){
    chub[i] = new Star();}
 for (int i = 0; i < 10; i++) {
    asteroids.add(new Asteroid());
  }
  }



Spaceship Rex;
boolean left = false;
boolean right = false;
boolean forward = false;
boolean backward = false;
boolean hyperspace = false;

public void draw(){
  background(0,0,0);

  Rex.show();
  if(forward == true)
  Rex.move();

   for(int i = 0; i < chub.length; i++){
     chub[i].show();    
   }
   for (int i = 0; i < 10; i++) {
    if (asteroids.get(i).tooClose(Rex.getterX(), Rex.getterY())) asteroids.set(i, new Asteroid());
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
}
