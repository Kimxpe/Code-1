float[] xPosArr = new float[200];

void setup() {
  size(1000,600);
  noStroke();
  background(0);
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] = 10 + i * 50;
  }
}

void draw() {
 background(0);
  
  for (int i = 0; i < xPosArr.length; i++) {
    
    fill(map(xPosArr[i], 0, width, 0, 255), map(xPosArr[i], 0, height, 0, 255), 150);
    rect(xPosArr[i], mouseY, 20, 20);
    fill(map(mouseX,0,width,0,255), map(mouseY,0,height,0,255));
    rectMode(CENTER);
    rect(mouseX, mouseY, 40, 40);
  }
  
fill(#EE0DFF);  
ellipse (width/2,height/2,mouseX/50*mouseY/50,mouseY/50*mouseX/50);

}