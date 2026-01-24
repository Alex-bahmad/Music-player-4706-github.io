/* Main Tab */ 
// Sound effect for XOut button //temp[ codee
int numberOfSoundEffects = 1;
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
//
void playXOutEffect() {
  if (soundEffects[0] != null) {
    soundEffects[0].rewind();
    soundEffects[0].play();
  }
}

//tenmp code


int appWidth, appHeight;
boolean nightMode = false;
boolean playButton = false;

// Button positions 
float XOutX, XOutY, XOutWidth, XOutHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;

// Colors
color resetBackground, resetInk;
color playColourBackground, playColourSymbol, playColourBackgroundHover, playColourSymbolHover;
color XOutColourBackground, XOutColourBackgroundHover;

void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;

  // Populate button positions
  divPopulation();
  setColors();

  // Setup music
  musicSetup();
}

void draw() {
  background(resetBackground);
  hoverOver_draw();
}

void mousePressed() {
  // XOut button
  if (mouseX > XOutX && mouseX < XOutX + XOutWidth && mouseY > XOutY && mouseY < XOutY + XOutHeight) {
    XOut();
  }
  
  // Play button
  if (mouseX > playDivX && mouseX < playDivX + playDivWidth && mouseY > playDivY && mouseY < playDivY + playDivHeight) {
    togglePlay();
  }
}

void keyPressed() {
  // Dark mode
  if (key == 'D' || key == 'd') {
    nightMode = !nightMode;
    setColors();
  }

  // XOut
  if (key == 'Q' || key == 'q') {
    XOut();
  }

  // Play / Pause music
  if (key == 'P' || key == 'p') {
    togglePlay();
  }
// Go to previous song with B key this is temp code
if (key == 'B' || key == 'b') {
  previousSong();
}
//this is temp code

 // Skip to next song with N key
if (key == 'N' || key == 'n') {
  nextSong();
}

}


// XOut function
// XOut function with sound effect
void XOut() {
  // Play XOut sound effect
  playXOutEffect();
  
  // Wait for the sound to finish playing
  if (soundEffects[0] != null) {
    while (soundEffects[0].isPlaying()) {
      delay(10); // small delay to let sound play
    }
  }
  
  // Now exit
  println("Exiting Sketch");
  noLoop();
  exit();
}


//efbef
