Star[] chub = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
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
  else if(key == ' ') {
    bullets.add(new Bullet(Rex));
  }
}

public void setup(){
  size(1000,600);
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
  for (int i = 0; i < bullets.size(); i++) {
    boolean itHappened = false;
    for (int seci = 0; seci < asteroids.size(); seci++) {
       if (bullets.get(i).tooClose(asteroids.get(seci).getMyCenterX(), asteroids.get(seci).getMyCenterY())) {
         asteroids.set(seci, new Asteroid());
         bullets.remove(i);
         itHappened = true;
         break;
       }
    }
    if (itHappened) break;
    bullets.get(i).move();
    bullets.get(i).show();
  }
}
