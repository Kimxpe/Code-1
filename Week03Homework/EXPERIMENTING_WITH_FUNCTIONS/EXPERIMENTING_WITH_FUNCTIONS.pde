void setup() {
  size (300,300);

//#1 - gives a value between two numbers
  for (int b = 0; b < 20; b++){
    float c = random(-10,10);
    println(c);
  }
  
  int x = addThree(23);
  println("the result of addThree(23): " + x);
  
// #2 - makes an ellipse with the square of a float is a value
  float d = sq(10);
  ellipse(width/2,100,d,100);
  println("d:" + d);
  
// #3 - make a rectangle with square root of float is a value
  float e = sqrt(1521);
  rect(width/2, 105, e, 10);
  println("e:" + e);

 }
 
  void draw() {
    DrawASquare();
 }
 
//#4 - give integer.
 int addThree(int b) {
    return b + 3;
}

//#5 - gives a shape.
  void DrawASquare() {
    rectMode(CENTER);
    rect(width/2,height/2,30,30);
    fill(142,200,212);
}