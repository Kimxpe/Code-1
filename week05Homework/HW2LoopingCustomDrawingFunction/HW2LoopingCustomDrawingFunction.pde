int x = width;
int y = height;
int rotVal = 0;


void setup () {
  size (600, 600);
  rectMode (CENTER);
}

void draw () {
  
  fill (200, 80, 120);
  for (int x = 0; x < width; x += 200) {
   translate(mouseX,mouseY);
   domino(x, y);
   domino(x/2, y/2);
   domino(x/4, y/4);
  }
}


void domino (int x, int y) {
  
  
  rotVal += 1;
  rotate(radians(rotVal));

  translate(x/3, y/3);
  fill(255);
  rect(width/2, height/2, 80, 140, 6);
  fill (0);
  ellipse(285, 250, 15, 15);
  ellipse(315, 250, 15, 15);
  ellipse(315, 280, 15, 15);
  ellipse(285, 280, 15, 15);

  ellipse(285, 320, 15, 15);
  ellipse(315, 320, 15, 15);
  ellipse(315, 350, 15, 15);
  ellipse(285, 350, 15, 15);

  line (330, 300, 270, 300);
}