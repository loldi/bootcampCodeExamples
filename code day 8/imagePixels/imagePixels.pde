PImage bunny;

int xpos = width/2;
int ypos = height/2;
float xchange = 0;
float ychange = 0;
color posColor;


void setup() {
  size(500, 500);
  bunny = loadImage("bunny.jpg");
 
}


void draw() {
  if(xpos < 0 || xpos > width){
   xpos *= -1; 
  } else if (ypos > height || ypos < 0){
    ypos *= -1;
    
  }
  
  xchange = int(random(-15,15));
  ychange = int(random(-15,15));
  
  xpos += xchange;
  ypos += ychange;
  posColor = bunny.get(xpos, ypos);
  fill(posColor);
  noStroke();
  ellipse(xpos,ypos,15,15);
  
  println(xpos, ypos);


}