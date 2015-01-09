PImage ship;

void setup(){
 size(800, 600);
 imageMode(CENTER);
 ship = loadImage("ship.jpg");
rectMode(CENTER); 

}

void draw(){
 background(0);
 
translate(width/2, height/2);
//turn ship clockwise when right key pressed
for(float i = 0; i < 360; i++){
  image(ship, 0, 0, 100, 100);
  if(keyPressed){
   if(key==CODED){
    if(keyCode==RIGHT){
      rotate(i);
    }
   } 
  }

}


}
