import processing.pdf.*;

PImage img;

void setup()
{
  size(500,670,PDF,"ImageManipulation5.pdf");
  img = loadImage("portrait.jpg");
  noStroke();
  
}
void draw() 
   {
  background(255);
 
  for (int i = 0; i < width; i+=6) {
    for (int j = 0; j < height; j+=6) {
      color c = img.get(i, j);
      fill(c);
      rect(i,j, 5, 15);
    }
  }
  exit();
}