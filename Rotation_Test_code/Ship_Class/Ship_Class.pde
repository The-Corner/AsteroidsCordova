class Ship{
 PImage spaceShip;
 float theta;
 PVector loc;

  Ship(float x, float y){
   loc = new PVector(x,y);
   theta = 0;
   spaceShip = loadImage("ship.jpg"); 
  }
  
  void display(){
    //create a temporary coordinate system
    pushMatrix();
    //translates the image around the center of the screen
    translate(loc.x, loc.y);
    //object rotates by specified number of radians
    rotate(theta);
    image(spaceShip, 0, 0, 50, 50);
    //exit the temporary coordinate system
    popMatrix();
  }
  
  void changeAngle(){
   if(keyPressed){
    if(keyCode == LEFT){
     theta -= radians(1); 
    }
    else if(keyCode == RIGHT){
     theta += radians(1); 
    }
   } 
  }
}
