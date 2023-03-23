//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
void drawMusicButtons() {
  drawStopButton();
  drawPauseButton();
  drawPlayButton() ;
}//End drawMusicButtons
//
void drawPauseButton() {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}//End drawPauseButton
//
void drawStopButton () {
 rect( stopX, stopY, stopWidth, stopHeight ); 
}//Square
void drawPlayButton() { 
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
}//End drawStopButton
