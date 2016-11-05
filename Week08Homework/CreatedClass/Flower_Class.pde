class Flower {
  float x;
  float y;
  float dx;
  float dy;
  PImage flowerImage;
  float randomSize;


  Flower () {
    x = width/2;
    y = height/2;
    dx = random(-3, 3);
    dy = random(-3, 3);

    flowerImage = loadImage("flower.png");

    println("Oh so pretty! A flower!");
  }

  void display () {
    noStroke();
    fill(100);
    image(flowerImage, x, y, randomSize, randomSize);
  }

  void update () {
    if (x < 0 || x > width - 100) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 

    if (y < 0 || y > height - 100) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }

  void RandomSize () {
    randomSize = random (50, 300);
  }

}