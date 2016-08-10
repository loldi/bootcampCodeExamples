Dog madison;
Dog jeff;

void setup() {

  madison = new Dog("brown", 10);
  jeff = new Dog("white", 4);

  madison.speak("Madison: It's my birthday today!");
  jeff.speak("jeff: Can I come to your party?");
  madison.speak("Madison: Nah");
}

class Dog {
  //declare the qualities that our class (Dogs) will have
  String furColor;
  String says;
  int age;


  //Constructor
  Dog(String tempFurColor, int tempAge) {
    furColor = tempFurColor;
    //println("I have " + tempFurColor + " color fur!");

  }
  
  void speak(String _says){
    says = _says;
    println(says);
  }
 
}