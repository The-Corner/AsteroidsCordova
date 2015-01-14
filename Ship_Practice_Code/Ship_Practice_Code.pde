Rocketship player;
ArrayList<Bullets> bullets = new ArrayList<Bullets>();

void setup(){
 size(800, 600);
 player = new Rocketship();
}

void draw(){
  background(0);
  player.shipDisplay();
  player.shipUpdate();
  
  for(int i = 0; i < bullets.size(); i++){
   Bullets bullets = bullets.get(i);
   bullets.bulletDisplay(); 
  }
  
}

void mousePressed(){
 bullets.add(new Bullets(player)); 
}


class Rocketship {
 PVector shipLoc, shipVel;
 float shipSZ;
 PImage rocketship;
 float theta;
 
 Rocketship(){
  shipLoc = new PVector(width/2, height/2);
  shipSZ = 100;
  rocketship = loadImage("rocketship(1).png");
  imageMode(CENTER); 
 }
 
 void shipDisplay(){
  pushMatrix();
  translate(shipLoc.x, shipLoc.y);
  rotate(theta);
  image(rocketship, 0, 0, shipSZ, shipSZ);
  popMatrix();
 }
 
 void shipUpdate(){
  if(keyPressed){
   if(keyCode == LEFT){
    theta -= radians(5); 
   }
   else if (keyCode == RIGHT){
    theta += radians(5); 
   }
  } 
 }
}
