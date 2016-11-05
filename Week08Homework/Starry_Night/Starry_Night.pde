ArrayList <Stars> flashingStars = new ArrayList <Stars> ();

void setup () {
   size (1300,800);
   noStroke();

}

void draw () {
  background (0);
  
  Stars s = new Stars(width/2, height/2);
  flashingStars.add(s);
  
  for (int i = 0; i < flashingStars.size(); i++) {
    Stars t = flashingStars.get(i);
    t.update();
    t.display();
    
    if (t.life < 0) {
      flashingStars.remove(i);
    }
  }
}