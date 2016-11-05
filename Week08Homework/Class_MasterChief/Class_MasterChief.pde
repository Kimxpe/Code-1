class MasterChief {

  float x; //MC's x position.
  float y; //MC's y position.
  boolean MCinAir; //true if MC is currently in the air because he was jumping
                   //or had fallen off of somewhere
  int movementState; // tracks if MC is walking, or running
  int weaponState; // tracks if weapon has enough ammo to be used
  boolean weaponUnavailable; // true is MC has run out of ammo



  MasterChief () {
    //MC constructor
  }

  void update() {
    //MC's current state
  }

  void display() {
    //show MC on screen
  }

  void jump() {
    //make MC jump
  }
  
  void run() {
    //make MC run
  }
  
  void crouch() {
    //make MC crouch
  }
  
  void throwFrag() {
    //make MC throw frag grenade
  }
  
  void switchWeapons () {
    //make MC switch weapons
  }
  
  void pickUp () {
    //make MC pick up a weapon, ammo, or grenade
  }
  
  void aimAndShoot () {
    //make MC aim then shoot his weapon
  }
  
  void drive () {
    //make MC drive Warthog
  }
  
  void die () {
    //called when MC dies (which is never because he's OP)
  }
}