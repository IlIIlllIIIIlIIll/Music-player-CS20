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
stopX = centerX - pauseWidth - pauseWidth*2/15; 
stopY = pauseY1;
stopWidth = 
stopHeight = 
}//End setup
//
void draw () {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight ) ;
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight ) ;
}//End draw
//
void keyPressed () {}//End keyPressed
//
void mousePressed () {}//End mousePressed
//
//End MAIN Program (Driver)
