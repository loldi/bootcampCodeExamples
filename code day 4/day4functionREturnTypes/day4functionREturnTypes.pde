String global = "this is global";

void setup() {

  size(500, 500);

  int myTotal = total(2);

  total(78877687);
  println(total(2));

  hello();

  String myStudents = silence("this is the second");
  println(myStudents);

  //println(myStudents + "are better than section C");
}

void draw() {
  background(255);
  float  x1 = map(mouseX, 0, 600, 150, 300);
  float y1 = map(mouseY, 0, 100, 0, 500);
  
  //map(value, minimumRangeValue, maximumRangeValue, newMin, newMax)
  ellipse(x1, y1, 50, 50);  
  //float x2 = map(mouseX, 0, width, 0, 200);
  //ellipse(x2, 125, 50, 50);
}


int total (int number) {

  int original, new_value;

  original = 10;
  new_value = original + number;

  return new_value;
}


void hello() {

  println("Hello there");
}

String silence (String silenceAgain) {

  String student = "this is the first part ";
  String answer = student + silenceAgain;

  return answer;
}