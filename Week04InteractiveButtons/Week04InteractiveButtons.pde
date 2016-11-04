//create one ellipse
//make the ellipse move
//make ellipse and change color as it progresses across the screen
//make the ellipse change size to be either bigger or smaller

int x;
int y;
int ell;

void setup() {
  size (400, 400);
  background (30);
  noStroke();

  ell = 20;
}

void draw () {
  ellipseMove ();
  x += 10;
  
  if (x > width) {
    x = 0;
    y += 40;
  }
}

void ellipseMove () {
  float r = map(x, 0, width, 0, 255);
  float g = map(y, 0, height, 0, 255);
  fill(r, g, 150);
  ellipse(x, y, ell, ell);
}

void mouseClicked() {
  float r = random(20,40);
  ellipse(x,y, r,r);
}
