float BX, BY, BW, BH;
float BX2, BY2, BW2, BH2;
String balls = "OY";
String balls2 = "41";
PFont amongusballs ;
color brandonC, red = #CE0000, brown = #000000, Notti = brown;
//image notti boolean
//image kyle richh

void setup() {
  fullScreen();
  //pop
  BX = displayWidth*1/7;
  BY = displayHeight*1/5;
  BW = displayWidth*1/7;
  BH = displayHeight*1/13;
  amongusballs = createFont("Comic Sans MS", 33);
  
  BX2 = displayWidth*1/2;
  BY2 = displayHeight*1/5;
  BW2 = displayWidth*1/7;
  BH2 = displayHeight*1/5;
    textAlign(CENTER);

}

void draw() {
  
  brandonC = red;
  
  fill(brandonC);
  rect(BX, BY, BW, BH);
  rect(BX2, BY2, BW2, BH2);
  fill(Notti);
  textFont(amongusballs, 33);
  text(balls, BX, BY, BW, BH);
  text(balls2, BX2, BY2, BW2, BH2);

    //rect(BX2, BY2, BW2, BH2);
}

void keyPressed() {
}

void mousePressed() {
  //nottiOn = false;
  //41On = false;
  
  if (mouseX >= BX && mouseY >= BY && mouseX <= BX+BW && mouseY <= BY+BH) exit();
}
