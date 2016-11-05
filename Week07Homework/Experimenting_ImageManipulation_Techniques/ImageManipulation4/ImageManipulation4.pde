import processing.pdf.*;

PImage img;
void setup() {
  size(1000, 650,PDF,"ImageManipulation4.pdf");
  img = loadImage("portrait.jpg");
  noStroke();
 
}
void draw() {
  //background(255);
  int posx = 0;
  int widthSize = 5;
  int heightSize = 5;
  
  for (int i = 0; i < width; i+= widthSize) {
    for (int j = 0; j < height; j+= heightSize) {
      color c = img.get(i, j);
   
      posx += random(-3,3);
      stroke(c);
      strokeWeight(10);
      point(i, posx + j);
      
      
    }
  }
  exit();
}