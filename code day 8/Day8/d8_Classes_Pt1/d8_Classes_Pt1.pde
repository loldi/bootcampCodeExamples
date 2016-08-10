//Bootcamp Day 8
// Hello Dog 
// Today's Hello World of Classes

Dog westie;
Dog labrador;

void setup(){
  westie = new Dog("white");
  labrador = new Dog("yellow");

}

class Dog {
//Declare the qualities that your Dogs will have
  String furColor;
  String says;
  
// Contructor
  Dog(String tempFurColor){
    furColor = tempFurColor;
    println("I have " + furColor +" fur");
  }
  
// Custom method for drawing the object
  void speak(String tempSay){
    says = tempSay;
    println(says);
    
  }
}

void draw(){
  westie.speak("woof");
  labrador.speak("bow wow!");
  delay(1000);
}