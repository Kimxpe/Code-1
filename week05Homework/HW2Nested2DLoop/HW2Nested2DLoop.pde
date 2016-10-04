int x = 0;
int y = 0;

void setup () {
  size (600,600);
}

void draw() {
background(255);
  for (int i = 0; i<= 10; i += 10 ) {
    for (int j = 2; j <= 10; j += 2) {
      
     stroke (map (i,0,10, 0, 210), map (j, 0, 10, 0, 200), 200);
     line (mouseX,mouseY, map (i,0,10,0, width), map (j,0,10,0,height));
    
     float a = dist(mouseX,mouseY,width/2,height/2);
     noStroke ();
     ellipseMode(CENTER);
     
     ellipse (width/2,height/2,a*2,a*2);
     
      }
    }
  translate (x,y);
  fill(x,80,250);
  
  for (int i = 0; i <=250; i += 50) {
    ellipse (i, 0, 50,50);
  }
  
  for (int i = 300; i <=550; i += 50) {
    ellipse (i,600,50,50);
  }
  
    x+=10; 
    if ( x > width) {
      x = 0;
    }
}