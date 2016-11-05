class Stars {
  float x, y;
  float life;
  float a;
  float xDirec, yDirec;

  Stars (float dx, float dy) {
    x = dx;
    y = dy;
    life = 1000;
    a = 200;
    xDirec = random (-width, width);
    yDirec = random (-height, height);
  }

  void update () {
    //life ++;
    x+=xDirec;
    y-=yDirec;


    if (a > 0) {
      a--;
    }   
  }
  
  void display () {
    fill (255, a);
    ellipse(xDirec,yDirec, 3, 3);
  }
}