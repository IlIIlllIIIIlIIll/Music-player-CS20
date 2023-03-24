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
playX1 = pauseX1 + (pauseX1/9) ;
playY1 = pauseY1;
playX2 = centerX;
playY2 = pauseY1 ;
playX3 = pauseX1 ;
playY3 = pauseY1 * 3/2 ;
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
