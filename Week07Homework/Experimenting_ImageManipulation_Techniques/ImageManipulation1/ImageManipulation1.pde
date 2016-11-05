import processing.pdf.*;

PImage img;
int value = 0;

void setup() {
   size(394,700,PDF, "ImageManipulation1.pdf");
  img = loadImage("Homie.jpg");
  size(394,700);
  noStroke();
}

void draw() {
  background(0);
  //tint(0,255,255);
  int widthStep = 20;
  int heightStep = 20;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      fill(c);
      ellipse(i, j, 20, 20);
    }
  }
  exit();
}