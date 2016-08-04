PImage photo;

void setup() {
  size(500, 500);

  photo = loadImage("bunny.jpg");
  println("oh shiiiiiit snakes!\n");
  println("press X to run or press Y to fight them!");
}


void draw() {

  image(photo, 0, 0, 500, 500);
  
  if(key == 'x'){
    clear();
    image(photo,0,0,250,250);
    
  }
}