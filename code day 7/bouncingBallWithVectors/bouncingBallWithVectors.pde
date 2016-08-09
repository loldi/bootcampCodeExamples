//inspiration taken from Daniel Shiffman's nature of code
//chapter 1

//vector notation in processing 
PVector position; 
PVector velocity; 

float r, g, b; 
int radius; 

void setup(){
  size(500, 500);
  background(0); 
  
  position = new PVector( width/2, height/2); 
  velocity = new PVector(5, 6); 
  
  smooth(); 
  
  
  radius = 100; 
}

void draw(){
  fill(0, 10); 
  rect(0, 0, width, height); 
  //background(0); 
   //instead of individually adding x speed and y speed to
   //x and y position, can just use vector notation
   position.add(velocity); 
  
  
  if( position.x >= (width- radius/2) || position.x <= radius/2){
    velocity.x = velocity.x *-1; 
  }
  if( position.y >= (height-radius/2) || position.y <= radius/2){
    velocity.y = velocity.y *-1 ; 
  }
  
  //changes color if hits boundaries of screen 
  if( position.x== (width- radius/2) || position.x== radius/2 ){
    r = random(0,255); 
    g = random(0, 255); 
    b = random(0, 255); 
  }
  
  if( position.y>= (height- radius/2) || position.y<= radius/2 ){
     r = random(0,255); 
     g = random(0, 255); 
     b = random(0, 255); 
  }
  
    noStroke();   
    fill(r, g, b); 
    ellipse(position.x , position.y, radius, radius); 
}

