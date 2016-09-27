//create one ellipse
//create a rect
//make the ellipse move
//make ellipse and rect change color
//make rect change background color when clicked

float x;
float y;

float dx;
float dy;

boolean rectClicked = false;

void setup() {
  size(400,400);
    background(30);
  noStroke();
  
  x = width/2;
  y = height/2;

  
  dx = 2;
  dy = 3;

}

void draw(){
  if (rectClicked) {
    background(100);
  } else {
    background (200);
  }
  
  float r = map(x,0,width,0,255);
  float g = map(y,0,height,0,255);
  
  fill(r,g,150);
  ellipse(x,y,30,30);
  
  rect(width/2,height/2,10,10);
    x+=dx;
    y+=dy;

    
    if(x> width - 15 || x < 15) {
      x -= dx;
      dx = -dx; 
    }
    
    if(y>height - 15 || y<15) {
      y -= dy;
      dy = -dy;
    } 

}

void mouseClicked() {
  float distance = dist(mouseX,mouseY,x,y);
  
  if (distance < x && distance < y) {
  rectClicked = !rectClicked;
  }
 }