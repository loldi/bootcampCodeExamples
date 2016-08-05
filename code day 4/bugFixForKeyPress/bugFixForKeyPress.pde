int step = 0;

char clear = ' ';

void setup(){
  size(500,500);
  background(255);
  
  println("press X for 1 or Y for 2");
  
}


void draw(){
  
}

void keyPressed(){
  
  if(key == 'x' && step == 0){
    key = clear; //clears the 'key' variable so subsequent IF statements don't fire.
    println("pressed X");
    step += 1; //increment step by 1 to progress story
  }
  
  if(key == 'x' && step == 1){
   key = clear;
   println("pressed X again");
   step = 2;
  }
  
  
}