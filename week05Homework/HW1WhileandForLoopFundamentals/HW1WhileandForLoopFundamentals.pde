//infinite while loop
    //int a = 1;
    //while ( a > 1 ) {
    //  println("OVERLOAD");
    //}
    
//infinite for loop
    // for ( int i = 3; i >= 3; i++ ) {
    //  println("HELP MEEE");
    //}
    
    
//3 loops that will loop 10 times

int a = 0;

while (a < 10) {
  a++;
  println ("a is now:" + a);
}

for(int b = 2; b <=20; b += 2) {
  println ("b will never change, but for now it will be: " + b);
}

int c = 1000;

while ( c <= 1000 && c > 0) {
  c -= 100;
  println ("hello from the number " + c);
}