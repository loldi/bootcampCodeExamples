float r = 0;
float theta = 0;
PVector position; 

void setup(){
  size (500, 500);
  background(0);
  position = new PVector(0, 0); 
}

void draw(){
  //position based on radius * cos(framecount)
  //cos and sin will be opposite wave functions
  //resulting x and y position will move in an orbit
  position.x = r*cos(frameCount);
  position.y = -r*sin(frameCount);
//  
//    //uncomment to draw sprial based on theta instead 
//    position.x = r*cos(theta);
//    position.y = -r*sin(theta);
//    theta += .1;
  
  fill(0, 255, 255);
  noStroke();
  ellipse(position.x+width/2, position.y+height/2, 1, 1);
 
  
  //if increase radius each loop, each ellipse will move in a spiral
  r+= .1;
  
}
