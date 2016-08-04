int x = 10;
int y = 57;
int z = 10;
int a = 14;

void setup() {
  size(500, 500);

  if ((x == 10 || y == 5) && (z == 10 && a == 14)) {
    background(random(256)); 
    println(x, y + " are equal to 10 and 5");
  } else {
    background(255); 
    println(x + " is equal to 32");
  }
}