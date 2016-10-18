int[] intArray = {50, -999, 2, 3, 4, 100};
int[] bigIntArray = new int[1000];

// How big would this array be? 
//int[] otherArray = new int[intArray[1]];

//ANSWER: 77

// What about this?? All you have to do is resolve the value inside the bracket. 
// Start on the inside.
//int[] lastArray = new int[intArray[bigIntArray[0] - 7]];

//ANSWER: 3

// Fill both of these last arrays with values here:

int[] otherArray = new int[77];
otherArray[0]= 1;
otherArray[1]= 1;
otherArray[2]= 1;
otherArray[3]= 1;
otherArray[4]= 1;

int[] lastArray = new int[3];
lastArray[0]= 2;
lastArray[1]= 2;
lastArray[2]= 2;

//LOOP:I
for (int i = 0; i < otherArray.length; i++) {
  otherArray[i]++;
  println("otherArray at position " + i + " is: " + otherArray[i]);
}

for (int i = 0; i < lastArray.length; i++) {
  lastArray[i]++;
  println("lastArray at position " + i + " is: " + otherArray[i]);
}