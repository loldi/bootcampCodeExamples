//inspiration taken from Daniel Shiffman's nature of code
//chapter 1

float x; 
float y; 
float xSpeed; 
float ySpeed; 
float r, g, b; 
int radius; 

void setup(){
  size(500, 500);
  background(0); 
  
  xSpeed = 5; 
  ySpeed = 6; 
  
  smooth(); 
  x = width/2; 
  y = height/2; 
  
  radius = 100; 
}

void draw(){
  fill(0, 10); 
  rect(0, 0, width, height); 
  //background(0); 
  
  //add xSpeed to x and y position
  x = x + xSpeed;
  y = y + ySpeed; 
  
  //create boundaries
  if( x>= (width- radius/2) || x<= radius/2){
    xSpeed = xSpeed *-1; //reverses xDirection
  }
  if( y >= (height-radius/2) || y <= radius/2){
    ySpeed = ySpeed * -1; 
  }
  
  //changes color if hits boundaries of screen 
  if( x== (width- radius/2) || x== radius/2 ){
    r = random(0,255); 
    g = random(0, 255); 
    b = random(0, 255); 
  }
  
  if( y>= (height- radius/2) || y<= radius/2 ){
     r = random(0,255); 
     g = random(0, 255); 
     b = random(0, 255); 
  }
  
    noStroke();   
    fill(r, g, b); 
    ellipse(x, y, radius, radius); 
}
