//create one ellipse
//make it bouce
//Create a very simple pattern that is still appealing
//make it "rainbow" by changing color

float x;
float y;

float dx;
float dy;


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
  
  float r = map(x,0,width,0,255);
  float g = map(y,0,height,0,255);
  
  fill(r,g,150);
  ellipse(x,y,30,30);
  
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