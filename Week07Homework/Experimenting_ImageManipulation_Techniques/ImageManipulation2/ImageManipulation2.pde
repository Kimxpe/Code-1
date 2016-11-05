import processing.pdf.*;

PImage img;
int value = 0;

void setup() {
  size(394,700,PDF,"ImageManipulation2.pdf");
  img = loadImage("Homie.jpg");
}

void draw() {
background(255);

  for (int y = 0; y < img.height; y+=10 ) {
    for (int x = 0; x < img.width+10; x+=1) {
      int location = x + y*img.width;
      stroke(img.pixels[location]);
      fill(img.pixels[location]);
      if (x %10 == 0) {
        triangle(x-10, y, x, y+10, x+5, y);
      }  else triangle(x-15, y+10, x, y, x+5, y+10);
   }
  }
  exit();
}