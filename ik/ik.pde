float BX, BY, BW, BH;
float BX2, BY2, BW2, BH2;
String balls = "OY";
String balls2 = "41";
PFont amongusballs;
color brandonC, red = #CE0000, brown = #000000, Notti = brown;
PImage pic;
String fileName = "notti.jpg";
String fileName2 = "kyle.jpg";

String pathway;
boolean imageNotti = false;
boolean imageKyle = false;
//image notti boolean
//image kyle richh

void setup() {
  //fullScreen();
  fullScreen();

  BX = displayWidth*1/7;
  BY = displayHeight*1/5;
  BW = displayWidth*1/7;
  BH = displayHeight*1/5;
  amongusballs = createFont("Comic Sans MS", 33);

  BX2 = displayWidth*1/2;
  BY2 = displayHeight*1/5;
  BW2 = displayWidth*1/7;
  BH2 = displayHeight*1/5;
  textAlign(CENTER);
  pathway = "data/";
  pic = loadImage(pathway+fileName);
}

void draw() {
  brandonC = red;
  fill(brandonC);
  rect(BX, BY, BW, BH);
  rect(BX2, BY2, BW2, BH2);
  fill(Notti);
  if (imageNotti) image(pic, BX2, BY2, BW2, BH2);
  textFont(amongusballs, 33);
  text(balls, BX, BY, BW, BH);
  text(balls2, BX2, BY2, BW2, BH2);
  if (imageKyle) image(pic, BX, BY, BW, BH);


  //rect(BX2, BY2, BW2, BH2);
}
void keyPressed() {
}

void mousePressed() {
  //nottiOn = false;
  //41On = false;

  if (mouseX >= BX && mouseY >= BY && mouseX <= BX+BW && mouseY <= BY+BH) {
    nottiONOFF();
  }
  if (mouseX >= BX2 && mouseY >= BY2 && mouseX <= BX2+BW2 && mouseY <= BY2+BH2) {
    kyleONOFF();
  }
}
void nottiONOFF() {
  if (imageNotti == false) {
    imageNotti = true;
  } else {
    imageNotti = false;
  }
}

void kyleONOFF() {
  if (imageKyle == false) {
    imageKyle = true;
  } else {
    imageKyle = false;
  }
}
//end nottiONOFF
