PImage[] images = new PImage[4];
int x = 0;
int y = 0;

void setup () {
  size (1200, 600);
  images[0] = loadImage("One.png");
  images[1] = loadImage("Two.jpg");
  images[2] = loadImage("3.png");
  images[3] = loadImage("4.png");
}


void draw () {
  background (map(mouseX, 0 ,width, 0, 255), map(mouseY, 0, height, 0, 255),150);
  
  for (int i = 0; i < images.length; i++) {
    image(images[0],width/2,height/4,300,300);
    image(images[1],width/4,height/4,300,300);
    image(images[2],mouseX/1.2f,mouseY/1.2f,100,100);
    image(images[3],mouseX,mouseY,100,100);
  }
 
}