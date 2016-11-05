//It seems to run a bit slow on my computer? I've tried a number 
//of things but didn't know how to make it run quicker?

int COLS_NUM = 10;
int ROWS_NUM = 10;
int x;
int y;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

void setup() {
  size(600, 600);

  float xStepAmount = (width)/(posx.length - 1);
  float yStepAmount = (height)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = i * xStepAmount;
      posy[i][j] =  j * yStepAmount;
    }
  }
}


void draw() {
  background(5);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      float r = map(i, 0, posx.length, 0, 255);
      float g = map(j, 0, posx[0].length, 0, 255);
      float b = map(dist(mouseX, mouseY, posx[i][j], posy[i][j]), 0, 200, 0, 255);
      fill(r, g, b);
      float s = map(dist(mouseX, mouseY, posx[i][j], posy[i][j]), 0, 200, 50, 10);
      rect(posx[i][j], posy[i][j], s, s);


      //posx[i][j] += random(-1, 1);
      //posy[i][j] += random(-1, 1);
    }
  }
}