float randomInt = random(256);

float triggerNum = 2;
void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  
  //background(255);

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      fill(random(256));
      noStroke();
      rect(i,j,1,1);
    }
  }
}