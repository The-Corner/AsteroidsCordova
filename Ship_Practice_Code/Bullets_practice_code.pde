class Bullets {
  PVector bulletLoc, bulletVel;
  float bulletSZ = 10;
  int bullet = 1;

  Bullets(Rocketship r) {
    bulletLoc = player.bulletLoc.get();
    bulletVel = PVector.fromAngle(player.theta);
  }
  void bulletDisplay() {
    ellipse(bulletLoc.x, bulletLoc.y, bulletSZ, bulletSZ);
    bulletLoc.add(bulletVel);
  }
}
