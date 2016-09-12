int w = 40;
int h = 30;
float rotAngle = 45;
int x = 20;
int y = 20;
int z = 0;
int p = 0;
float pistilSizew = 40;
float pistilSizel = 40;
float framesizew = 5;
float framesizel = 5;

void setup() {
  size (600,600);
  background (185,225,222);
}

void draw() {
  ellipseMode(CENTER);
  drawMiddle ();
  
   //first push
   pushMatrix();
   translate(width/2,height/2);
   rotate(radians(rotAngle*-.5));
  drawCenterPetals(z,z);
  rotAngle+=2;
  
  //second push
  pushMatrix();
  translate(50,-20);
  rotate(radians(rotAngle));
  drawFrame();
  
  //third push
  pushMatrix();
  translate(10,20);
  rotate(radians(rotAngle*.8)); 
  drawOutsidePetals(x,x);
  //three pops
  popMatrix();
  popMatrix();
  popMatrix();
}

//draws the middle of the "flower"
void drawMiddle () {
  ellipse(width/2,height/2,pistilSizew,pistilSizel);
  fill(142,200,212);
}

void drawCenterPetals (int z, int p) {
   fill(165,141,196);
  rectMode(CORNER);
  rect(z,p,w,h);
}

void drawOutsidePetals (int x, int y) {
  fill(193,182,223);
  rectMode(CORNER);
  rect(x,y,w,h);
}

void drawFrame () {
  fill(255,255,255);
  ellipse(width/4,height/4,framesizew,framesizel);
}