void setup() {
  size(500, 500);
  background(255);

  rectMode(CENTER);
  noStroke();
  fill(255, 255, 0);
  rect(width/2, height/2, 100, 100);
  fill(255, 0, 255);
  ellipse(width/2, height/2, 10, 15);
  //fill(0, 0, 255);
  triangle(0, height/2, width/2, 0, width, height/2);
  
  stroke(1);
  fill(200);
  arc(50, 200, 200, 200, 0, HALF_PI);
  //noFill();
  arc(50, 55, 60, 60, HALF_PI, PI);
  arc(50, 55, 70, 70, PI, PI+QUARTER_PI);
  arc(50, 55, 80, 80, PI+QUARTER_PI, TWO_PI);
  
  line(width/2, height/2, mouseX, mouseY);

}

void draw() {

  println("x position: " + mouseX);
  println("y position: " + mouseY);
}