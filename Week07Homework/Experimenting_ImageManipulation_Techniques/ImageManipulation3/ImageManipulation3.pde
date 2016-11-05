PImage img;
int ranDraw = 30;

void setup() {
  size(1000,600);
  background(255);
  img = loadImage("portrait.jpg");
}

void draw() {

  int x = int(random(img.width));
  int y = int(random(img.height));
  int spot = x + y*img.width;
  
  loadPixels();
  float g = green(img.pixels[spot]);
  float b = blue(img.pixels[spot]);
  noStroke();
  
  fill(0,g,b,100);
  ellipse(x,y,ranDraw,ranDraw); 
}