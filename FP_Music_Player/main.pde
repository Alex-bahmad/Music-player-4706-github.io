/* Main Tab */

// Background image
PImage bgImage;
float RlokX, RlokY, RlokWidth, RlokHeight;
float RWidthAdjusted, RHeightAdjusted;
int RWidth1, RHeight1;

// XOut sound
int numberOfSoundEffects = 1;
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
void playXOutEffect() {
  if (soundEffects[0] != null) {
    soundEffects[0].rewind();
    soundEffects[0].play();
  }
}

// Screen 
int appWidth, appHeight;
boolean nightMode = false;
boolean playButton = false;

// Buttons
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

  divPopulation();
  setColors();
  musicSetup();

  // Load background
  String upArrow = "../../";
  String folder = "Images Dependancy/Images/";
  String R = "R";
  String fileExtensionJPG = ".jpg";
  String RPathway = upArrow + folder + R + fileExtensionJPG;
  bgImage = loadImage(RPathway);

  RWidth1 = 3840;
  RHeight1 = 2160;

  // Div
  RlokX = appWidth * 5 / 20.8;
  RlokY = appHeight * 1 / 17;
  RlokWidth = appWidth * 10 / 20.8;
  RlokHeight = appHeight * 7 / 17;

  // Aspect ratio
float RAspectRatio = RWidth1 / (float)RHeight1;
  RWidthAdjusted = RlokWidth;
  RHeightAdjusted = (RWidth1 >= RHeight1) ? RWidthAdjusted / RAspectRatio : RWidthAdjusted * RAspectRatio;

  int safety = 0;
  while (RWidthAdjusted > RlokWidth || RHeightAdjusted > RlokHeight) {
    RWidthAdjusted *= 0.99;
    RHeightAdjusted *= 0.99;
    safety++;
    if (safety > 10000) break;
  }

  // Center image
  if (RWidthAdjusted < RlokWidth) RlokX += (RlokWidth - RWidthAdjusted)/2;
  if (RHeightAdjusted < RlokHeight) RlokY += (RlokHeight - RHeightAdjusted)/2;
}

void draw() {
  if (bgImage != null) image(bgImage, RlokX, RlokY, RWidthAdjusted, RHeightAdjusted);
  hoverOver_draw();
}

void mousePressed() {
  if (mouseX > XOutX && mouseX < XOutX + XOutWidth && mouseY > XOutY && mouseY < XOutY + XOutHeight) XOut();
  if (mouseX > playDivX && mouseX < playDivX + playDivWidth && mouseY > playDivY && mouseY < playDivY + playDivHeight) togglePlay();
}

void keyPressed() {
  if (key == 'D' || key == 'd') nightMode = !nightMode; setColors();
  if (key == 'Q' || key == 'q') XOut();
  if (key == 'P' || key == 'p') togglePlay();
  if (key == 'B' || key == 'b') previousSong();
  if (key == 'N' || key == 'n') nextSong();
}

// XOut
void XOut() {
  playXOutEffect();
  if (soundEffects[0] != null) while (soundEffects[0].isPlaying()) delay(10);
  println("Exiting Sketch");
  noLoop();
  exit();
}
