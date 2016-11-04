void setup() {
  size (300, 300);
  GetAValue();
  DrawARectwithSQRT();
  DrawAnEllipseWithSQ();

  int x = addThree(23);
  println("the result of addThree(23): " + x);
} 

void draw() {
  DrawASquare();
}

//#1 - gives a value between two numbers
void GetAValue() {
  for (int b = 0; b < 3; b++) {
    float c = random(-5, 5);
    println("c: " + c);
  }
}

// #2 - makes an ellipse with the square of a float is a value
void DrawAnEllipseWithSQ () {
  float d = sq(10);
  ellipse(width/2, 100, d, 100);
  println("d:" + d);
} 

// #3 - make a rectangle with square root of float is a value
void DrawARectwithSQRT() {
  float e = sqrt(1521);
  rect(width/2, 105, e, 10);
  println("e:" + e);
} 

//#4 - give integer.
int addThree(int b) {
  return b + 3;
}

//#5 - gives a shape.
void DrawASquare() {
  rectMode(CENTER);
  rect(width/2, height/2, 30, 30);
  fill(142, 200, 212);
}
