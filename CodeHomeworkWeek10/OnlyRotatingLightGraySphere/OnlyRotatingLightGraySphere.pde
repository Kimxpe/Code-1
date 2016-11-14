import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup() {
  size(1300, 700, P3D);
  background(255);
  noFill();
  stroke(170, 60);

  minim = new Minim(this);

  player = minim.loadFile("Lorde - Everybody Wants To Rule The World (Evinrude Remix).mp3");

}
void draw() {
  background(255);
  stroke(170, 60);

  pushMatrix();
  translate(width/2, height/2);
  rotateY(frameCount / 100.0);

  rotate(PI/8);
  sphere(100);
  popMatrix();

  //sound waves
  for (int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
    line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
  }

  //tells what part of song at
  float posx = map(player.position(), 0, player.length(), 0, width);
  stroke(0, 200, 200);
  line(posx, 20, posx, height/4);
  
}

void keyPressed()
{
  if ( player.isPlaying() )
  {
    player.pause();
  } else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  } else
  {
    player.play();
  }
}