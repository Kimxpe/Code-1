ArrayList<Walker> walkerList = new ArrayList<Walker>();

void setup() {
  size(1000, 700);
  noStroke();
  background(255);
}

void draw() {
  for (Walker walker : walkerList) {
    walker.move();
    walker.display();
  }
}

void mousePressed() {
  walkerList.add(new Walker(mouseX, mouseY));
}

class Walker {
  float x, y, xStep, yStep, siz;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 10;
    this.xStep = this.siz * 2;
    this.yStep = this.siz * 2;
  }

  void display() {
  
    fill (map(x,0,width,0,255), map (y,0,height,0,255), 255,20);
    textSize(random(10,200));
    text(key, random(-100,width),random(-100,height));
    
    fill(0,20);
    rect(x, y, siz, siz);
  }

  void move() {
    int rand = (int)random(8);
    switch (rand) {
    case 0:
      x-=xStep;
      break;
    case 1:
      x+=xStep;
      break;
    case 2:
      y-=yStep;
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
    }
    
  }

}