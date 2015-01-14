Ship player;

void setup(){
 size(800,600);
 imageMode(CENTER); 
 player = new Ship(width/2, height/2);
}

void draw(){
 background(0);
 
 player.display();
 player.changeAngle();
}


