class Fire {
  PVector loc;
  PVector vel;
  float sz=10;
  float theta;

  Fire(Rocketship player) {
    loc = player.loc.get();
    vel = PVector.fromAngle(player.theta);
  }

  void bulletDisplay() {
    fill(255);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    ellipse(loc.x, loc.y, sz, sz);
    popMatrix();
  }
  
  void bulletMove(){
   loc.add(vel); 
  }
}

