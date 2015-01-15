Rocketship player;
ArrayList<Fire> bullets = new ArrayList<Fire>();

void setup() {
  size(800, 600);
  player = new Rocketship();
}

void draw() {
  background(0);
  player.shipDisplay();
  player.shipUpdate();

    if(key == ' '){
    for (int i = 0; i < bullets.size (); i++) {
      Fire b = bullets.get(i);
      b.bulletDisplay();
      b.bulletMove();
  }
  }
}




class Rocketship {
  PVector loc, vel;
  float sz;
  PImage rocketship;
  float theta;

  Rocketship() {
    loc = new PVector(width/2, height/2);
    sz = 100;
    rocketship = loadImage("rocketship1.png");
    imageMode(CENTER);
  }

  void shipDisplay() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    image(rocketship, 0, 0, sz, sz);
    popMatrix();
  }

  void shipUpdate() {
    if (keyPressed) {
      if (keyCode == LEFT) {
        theta -= radians(5);
      } else if (keyCode == RIGHT) {
        theta += radians(5);
      }
    }
  }
}

