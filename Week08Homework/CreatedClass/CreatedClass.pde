//single flower object

Flower f;

void setup () {
  size (600,600);
  //instantiate Flower object by calling constructor
  f = new Flower();
}

void draw() {
  background(255);
  f.update();
  f.display();
}

 void mouseClicked(){
    f.RandomSize();
  }