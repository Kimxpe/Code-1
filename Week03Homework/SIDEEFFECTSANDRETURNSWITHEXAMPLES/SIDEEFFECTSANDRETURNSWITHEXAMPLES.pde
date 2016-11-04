/*
5 SIDE EFFECT ONLY FUNCTIONS:
(1) background() -  changes the background color of the processing window.                         
                               used below on line 28
(2) stroke() - Sets the color used as a border around the shape
                               used below on line 30-31
(3) noStroke() - disables the outlining stroke around the shape.
                               used below on lines 33-34
(4) textAlign() - Sets the current alignment for drawing text using parameters
                               used below on line 41
(5) textSize() - sets the currect font size that is measured in units of pixels.
                               used below on line 42
5 FUNCTIONS WITH RETURN VALUES:
(1) random() -  returns an unexpected value within the specified range
              the returned value is the absolute value of the argument
              used below on line 52-55
(2) get() - returns either an image or an int.
              used below on line 58
(3) sqrt() - calculates the square root of a number.
                               used below on line 48-49
(4) sq() - squares a number by multiplying the number by itself.
                               used below on line 45-46
(5) abs() - returns the absolute value of a number that is always positive.
                               used below on lines 43
*/

void setup () {
  size(300,300);
background(255, 204, 0);

println("OH MY I SURE HOPE THIS IS DECENTLY RIGHT D:");

stroke(204, 102, 0);
rect(30, 20, 55, 55);

noStroke();
rect(30, 20, 55, 55);

String s = "The quick brown fox jumped over the lazy dog.";
fill(50);
text(s, 100, 100, 70, 80); 

textAlign(BOTTOM);
textSize(26); 
text("WORD", 10, 50); 

float c = sq(9);   // Sets 'c' to 81
println("c: " + c);


float a2 = sqrt(6561);  // Sets 'a' to 81
println ("a2: " + a2);

float r = random(-4, 5);
println("r: " + r);

int getx = get(13,12);
println("getx: " + getx);

}
