/* Main Tab */

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
}


// XOut function
void XOut() {
  println("Exiting Sketch");
  noLoop();
  exit();
}
