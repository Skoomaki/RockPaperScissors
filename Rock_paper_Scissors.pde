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
  boolean rockChoice() {
    if (mouseX >= Button[0].rectX && mouseX <= Button[0].rectX+Button[0].rectW && mouseY >= Button[0].rectY && mouseY <= Button[0].rectY+Button[0].rectH) {
      return true;
    } else { 
      return false;
    }
  }
  boolean paperChoice(int rectX, int rectY, int rectW, int rectH) {
    if (mouseX >= rectX && mouseX <= rectX+rectW && mouseY >= rectY && mouseY <= rectY+rectH) {
      return true;
    } else { 
      return false;
    }
  }
  
  void mousePressed() {
    
    // if user chooses Rock
    if (rockChoice==true) {
      println("hello");
    }
    if (rockChoice==true && choices[index] == "paper") {
      // lose
    }
    if (rockChoice==true && choices[index] == "scissors") {
      // win
    }
    // if user chooses paper
    if (paperChoice==true && choices[index] == "rock") {
      // win
    }
    if (paperChoice==true && choices[index] == "paper") {
      // draw
    }
    if (paperChoice==true && choices[index] == "scissors") {
      // lose
    }
    // if user chooses scissors
    if (scissorChoice==true && choices[index] == "rock") {
      // lose
    }
    if (scissorChoice==true && choices[index] == "paper") {
      // win
    }
    if (scissorChoice==true && choices[index] == "scissors") {
      // draw
    }
  }
  


  