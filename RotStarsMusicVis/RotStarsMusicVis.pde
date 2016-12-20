//I got inspiration from this source:x
    //https://www.youtube.com/watch?v=a-Ht7d-tECY

import ddf.minim.*;
import ddf.minim.analysis.*;


//stars
int amount = 1000;
int[] x = new int[amount];
int[] y = new int[amount];
int[] z = new int[amount];
//


//music visualizer
Minim minim;
AudioPlayer player;
BeatDetect beat;

  //size of circle
int r = 230; //200
float rad = 60; //70
//


void setup() {
  size(displayWidth, displayHeight, P3D);

  //music visualizer
  minim = new Minim(this);
  player = minim.loadFile("Lies - Marina & The Diamonds.mp3");
  beat = new BeatDetect();
  player.loop();
  noCursor();
  //


  //stars
  noFill();
  stroke(255);
  strokeWeight(1);
  for (int i = 0; i<amount; i++) {
    x[i] = int(random(-500, 500));
    y[i] = int(random(-500, 500));
    z[i] = int(random(-500, 500));
  }
  //
}


void draw() {
  background(0);
 
//music visuaizer
  beat.detect (player.mix);
//

//screen move
  translate(width/2, height/2);
  rotateY (frameCount / 100.0); //(frameRate/10);
//

//music visualization

  beginShape();
  noFill();
  stroke(-1, 50);
  


int bsize = player.bufferSize();
  for (int i = 0; i < bsize - 1; i+=7) //i+=5 i+=3
  {
    float x = (r)*cos(i*2*PI/bsize);
    float y = (r)*sin(i*2*PI/bsize);
    float x2 = (r + player.left.get(i)*200)*cos(i*2*PI/bsize);
    float y2 = (r + player.left.get(i)*200)*sin(i*2*PI/bsize);
    //
    
 
    line(x, y, x2, y2);
   
    vertex(x2, y2);
    //rotate(mouseX);
    //rotateY(frameCount);
    pushStyle();
    stroke(-1);
    strokeWeight(2);
    point(x2, y2);
    popStyle();
    endShape();
  }
//


//middle sphere
  stroke(170, 60);
  sphere(100);

  pushMatrix();
  rotate(PI/8);
  sphere(100);
  popMatrix();
//

//stars
  stroke(255);
  for (int i = 0; i<amount; i++) {
    point(x[i], y[i], z[i]);
  }
//
}