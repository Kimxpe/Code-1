int IMG_NUM = 10;
PImage[] pusheen = new PImage[IMG_NUM];

void setup() {
  size(1000, 400);
  background(210, 100, 200);
  imageMode(CENTER);
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");
  }
}

void draw() {
  noStroke();
  float r = dist(width/3,height/3,mouseX,mouseY);
  background (r, 100, 255);

  float a = random(200);
  float b = random(200);
  float c = random(200);
  
  ellipse (200, 200, a, a);
  ellipse (500, 200, b, b);
  ellipse (800, 200, c, c);

  for (int i = 0; i < pusheen.length; i++) {
    image(pusheen[i], 50+i*100, 100, 100, 100);
    image(pusheen[i], 50+i*100, 300, 100, 100);
  }
}