int[] ellipseXPos = new int[20];

void setup() {
  size(1000, 400);

  for (int i = 0; i < ellipseXPos.length; i++) {
    ellipseXPos[i] = 10;
  }
}

void draw() {
  fill(250,20);
  noStroke();
  rect(0,0,width,height);
  
  
  stroke(0);
  for (int i = 0; i < ellipseXPos.length; i++) {
    fill(map(i, 0, ellipseXPos.length, 0, 255), map(i, 0, height, 0, 255), 255);
    ellipse(ellipseXPos[i], i * 20, mouseX, mouseY);
  }

  for (int i = 0; i < ellipseXPos.length; i++) {
    if (ellipseXPos[i] < width) {
      ellipseXPos[i] += i;
    } else {
      ellipseXPos[i] = 0;
    }
  }
}