//I got inspiration from these sources:
    //

import ddf.minim.*;
import ddf.minim.analysis.*;


//music visualizer
Minim minim;
AudioPlayer player;
BeatDetect beat;

//size of circle
int r = 180; //200
float rad = 60; //70
//

void setup() {
  size(displayWidth, displayHeight, P3D);

  //music visualizer
  minim = new Minim(this);
  player = minim.loadFile("DM Galaxy feat. Aloma Steele - Bad Motives.mp3");
  beat = new BeatDetect();
  player.loop();
  noCursor();
  
  //
}

void draw() {
  background(0);
  translate(width/2, height/2);
  //music visuaizer
  beat.detect (player.mix);
  beginShape();
  stroke(-1, 50);


  int bsize = player.bufferSize();
  for (int i = 0; i < bsize - 1; i+=1)
  {
    float x = (r)*cos(i*2*PI/bsize);
    float y = (r)*sin(i*2*PI/bsize);
    float x2 = (r + player.left.get(i)*200)*cos(i*2*PI/bsize);
    float y2 = (r + player.left.get(i)*200)*sin(i*2*PI/bsize);
    //
    
    line(x, y, x2, y2);
    rotateY(frameRate/30);
    vertex(x2, y2);
   // rotate(mouseX);
    //rotateY(frameCount);
    pushStyle();
    stroke(-1);
    strokeWeight(2);
    //point(x2, y2);
    popStyle();
    endShape();
  }
  //
}