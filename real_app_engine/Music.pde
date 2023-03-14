//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, song1, song2, sound1, sound2;
int currentSong=0;
Boolean autoPlayOn=false;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Set the Directory or Pathway to the Music
  //Pathway: data / Music or Sound Effct Files
  //
  //Reminder: finish OS_Level Code to auto read pathway and files (See Operating System)
  //
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + song1 );
  songs[1] = minim.loadFile( pathway + song2 );
  soundEffects[0] = minim.loadFile( pathway + sound1 );
  soundEffects[1] = minim.loadFile( pathway + sound2 );
  //
} //End setupMusic
//
void drawMusic() {
  print("Current Song Position:", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
  println("Muted", songs[currentSong].isMuted() );
  //
  /* Autoplay Section, see Music Subprogram
   if ( autoPlayOn ) {//Auto Play
   //if () {} if else () {} else {}
   //Ex#1: .position() >= .length(), then rewind(), currentSong+=1, .play()
   //Ex#2: .isPlaying(), when false rewind(), currentSong+=1, .play()
   } //End Autoplay
   */
  //
}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  //
  if ( key == 'm' || key == 'M' ) {
    mute();
  }
    //
    //Forward & Reverse Skip
    if ( key == 'f' ) songs[currentSong].skip(1000); //parameter in milliseconds
    if ( key == 'r' ) songs[currentSong].skip(-1000); //parameter in milliseconds
    if ( key == 'R' ) songs[currentSong].skip(-1000000);
    //Play-Pause
    if ( key == 'p' || key == 'P' ) { //Play-Pause Button
      if ( songs[currentSong].isPlaying() ) {
        songs[currentSong].pause();
      } else if (songs[currentSong].position() >= songs[currentSong].length()*4/5) {
      } else {
        songs[currentSong].play();
      }
    } //End Play-Pause
    //
    //APB
    if ( key == 'o' || key == 'O' ) {
      if ( autoPlayOn == false ) {
        autoPlayOn = true;
      } else {
        autoPlayOn = false;
      }
    }
    //
    //End keyPressedMusic
    //
    void mousePressedMusic() {
    }//End mousePressedMusic
    //
    void concatenationOfMusicFiles() {
      pathway = "data/";
      song1 = "Mickey Mouse Sings Calling My Phone by Lil Tjay (Official Audio).mp3";
      song2 = "";
      sound1 = "";
      sound2 = "";
    }//End concatenation
    //

    void mute() {
      {//Mute Button, not PAUSE, only affect speakers
        //ERROR: this MUTE Button only works when song is playing
        //ERROR Fix: unmute or rewind when song is not playing (i.e. unmute next song)
        if ( songs[currentSong].isMuted() ) {
          songs[currentSong].unmute();
        } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {

          songs[currentSong].rewind(); //simple solution, contains ERROR
        } else {
          songs[currentSong].mute();
        }
      }
    }//End Mute Button
    //End Music SubProgram
