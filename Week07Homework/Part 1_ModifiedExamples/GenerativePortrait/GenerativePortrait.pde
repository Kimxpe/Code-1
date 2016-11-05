PImage img;

void setup() {
  size(400, 700);
  img = loadImage("portrait.jpg");
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);

  int widthStep = 2;
  int heightStep = 15;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);

      float s = map(0, mouseX/4, width, mouseY/4, height)/2;

      pushMatrix();
      translate(i, j);
      fill(c);
      rotate(i+j+radians(frameCount));
      rect(0, 0, s, s);
      popMatrix();
    }
  }
}