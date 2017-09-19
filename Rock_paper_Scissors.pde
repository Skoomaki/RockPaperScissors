// Font variable
PFont r;
// Initialising Array
Button[] Button = new Button [3];
// win counter
int winCounter = 0;
// boolean for choices
boolean rockChoice=false;
boolean paperChoice=false;
boolean scissorChoice=false;
boolean gameOver=false;
// randomiser of chocies
String[] choices = {"rock", "paper", "scissors"};
int index = int (random(choices.length));


void setup() {
  // size of window
  size(600,600);
  // button objects declared
  Button[0] = new Button(100, 400, 50, 50);
  Button[1] = new Button(300, 400, 50, 50);
  Button[2] = new Button(500, 400, 50, 50);
  // color of background
  background(22,33,244);
  // styling the font of text
  r = createFont("Ariel", 30);
  
}


void draw() {
  // goes through array indices 0,1,2 
  for (int i=0; i < 3; i++) {
  // displaying the instances of object button
  //Button[0].display();
  //Button[1].display();
  //Button[2].display();
  Button[i].display();
  }
  textFont(r);
  textAlign(CENTER);
  text("rock, paper, or scissors?",width/2,150);
  text("rock",100,350);
  text("paper",300,350);
  text("scissors",500,350);
}  
  boolean rockChoice(int rectX, int rectY, int rectW, int rectH) {
    if (mouseX >= rectX && mouseX <= rectX+rectW && mouseY >= rectY && mouseY <= rectY+rectH) {
      return true;
    } else { 
      return false;
    }
  }
  
  void mousePressed() {
    if (rockChoice==true) {
      println("hello");
    }
  }
  


  