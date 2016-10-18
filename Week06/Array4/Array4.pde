int NUMBALLS = 40;

float[] ballX = new float[NUMBALLS];
float[] ballY = new float[NUMBALLS];
float[] dx = new float[NUMBALLS];
float[] dy = new float[NUMBALLS];

void setup() {
  size(1100,600);
  
  noStroke();
  
  for (int i = 0; i < NUMBALLS; i++) {
    ballX[i] = width/2;
    ballY[i] = height/2;
    dx[i] = random(-20,20);
    dy[i] = random(-20,20);
    
    //ballX[i] = 0;
    //ballY[i] = map(i,0,NUMBALLS,0,height);
    //dx[i] = map(i,0,NUMBALLS,0,5);
    //dy[i] = 0;
  }
}

void draw() {
  background(map(mouseX,0,width, 0,255), map(mouseY,0,height,0,255),255);
  
  for (int i = 0; i < NUMBALLS; i++) {
    fill(map(i,0,NUMBALLS,50,255), map(mouseY, 0, mouseX,0,255), 150);
    ellipse(ballX[i], ballY[i], i+30, i+30);
    fill(0);
    ballX[i] += dx[i];
    ballY[i] += dy[i];
    
    if (ballX[i] > width || ballX[i] < 0) {
      ballX[i] -= dx[i];
      dx[i] = -dx[i];
    }
    
    if (ballY[i] > height || ballY[i] < 0) {
      ballY[i] -= dy[i];
      dy[i] = -dy[i];
    }
    
  }
}