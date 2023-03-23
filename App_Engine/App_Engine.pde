//Global Variables
//
void setup() {
  //Landscape (portrait, square)
  size(700, 400); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
float centerX = width * 1/2;
pauseWidth = width * 1/44;
pauseX1 = centerX - pauseWidth - pauseWidth*2/15;
pauseY1 =  height * 1/3;
pauseX2 = centerX + pauseWidth*2/15;
pauseY2 = height * 1/3;
pauseHeight = height * 1/9;
//
stopX = width *1/2.75; 
stopY = height * 1/3;
stopWidth = height * 1/9;
stopHeight = height * 1/9;
//
playX1 = centerX - pauseWidth - pauseWidth*2/15;
playY1 = height * 1/3;
playX2 = width * -1/9;
playY2 = height * 1/9;
playX3 = width * 1/9;
playY3 = height * 1/9 ;
}
//End setup
//
void draw () {
  drawMusicButtons();
}
//End draw
//
void keyPressed () {}//End keyPressed
//
void mousePressed () {}//End mousePressed
//
//End MAIN Program (Driver)
