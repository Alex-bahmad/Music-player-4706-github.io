/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - MouseX & Y keyVariables
 
 - What to copy and paste
 - Quit & Play DIV
 */
//
//Library - Minim
//
//Global Variables
//
int appWidth, appHeight;

// Close button variables
float xOutX, xOutY, xOutWidth, xOutHeight;
float xOutlineLine1X1, xOutlineLine1Y1, xOutlineLine1X2, xOutlineLine1Y2;
float xOutlineLine2X1, xOutlineLine2Y1, xOutlineLine2X2, xOutlineLine2Y2;

// Play button variables
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1;
float playSymbolX2, playSymbolY2;
float playSymbolX3, playSymbolY3;

// Booleans
Boolean playButton;
Boolean xOutButton;
Boolean nightMode = false;

// Colours
color resetBackground, resetInk;
color playColourBackground, playColourSymbol;
color playColourBackgroundHover, playColourSymbolHover;
color xOutColourBackground, xOutColourBackgroundHover;

void setup() {
  size(600, 400);
  appWidth = width;
  appHeight = height;

  // xOut button
  xOutX = appWidth * 24.7/28.0;
  xOutY = appHeight * 1/17.0;
  xOutWidth = appWidth * 2/28.0;
  xOutHeight = appHeight * 2/17.0;
  xOutlineLine1X1 = xOutX + xOutWidth * 1/4;
  xOutlineLine1Y1 = xOutY + xOutHeight * 1/4;
  xOutlineLine1X2 = xOutX + xOutWidth * 3/4;
  xOutlineLine1Y2 = xOutY + xOutHeight * 3/4;
  xOutlineLine2X1 = xOutX + xOutWidth * 3/4;
  xOutlineLine2Y1 = xOutY + xOutHeight * 1/4;
  xOutlineLine2X2 = xOutX + xOutWidth * 1/4;
  xOutlineLine2Y2 = xOutY + xOutHeight * 3/4;

  // Play button
  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;

  playButton = false;
  xOutButton = false;

  setColors();
}

void draw() {
  background(resetBackground);

  // Xout BUTTON
  if (mouseX > xOutX && mouseX < xOutX + xOutWidth && mouseY > xOutY && mouseY < xOutY + xOutHeight) {
    xOutButton = true;
    fill(xOutColourBackgroundHover);
  } else {
    xOutButton = false;
    fill(xOutColourBackground);
  }
  rect(xOutX, xOutY, xOutWidth, xOutHeight);
  line(xOutlineLine1X1, xOutlineLine1Y1, xOutlineLine1X2, xOutlineLine1Y2);
  line(xOutlineLine2X1, xOutlineLine2Y1, xOutlineLine2X2, xOutlineLine2Y2);

  // play BUTTON
  if (mouseX > playDivX && mouseX < playDivX + playDivWidth &&
      mouseY > playDivY && mouseY < playDivY + playDivHeight) {
    playButton = true;
    fill(playColourBackgroundHover);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolHover);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  } else {
    playButton = false;
    fill(playColourBackground);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  }
}

void mousePressed() {
  if (playButton) {
    println("play music");
  }
  if (xOutButton) {
    println("close app");
    noLoop();
    exit();
  }
}

void keyPressed() {
  if (key == 't' || key == 'T') {
    nightMode = !nightMode;
    setColors();
  }
}

void setColors() {

  // normal 
  resetBackground = #FFFFFF;
  resetInk = #000000;

  if (nightMode) {
    playColourBackground = #444444;
    playColourSymbol = #EEEEEE;
    playColourBackgroundHover = #666666;
    playColourSymbolHover = #FFFFFF;

    // X button night mode
    xOutColourBackground = #333333;
    xOutColourBackgroundHover = #555555;
  } else {
    playColourBackground = #76E2FF;
    playColourSymbol = #76FCFF;
    playColourBackgroundHover = #A6F0FF;
    playColourSymbolHover = #FFFFFF;

    // X button day mode
    xOutColourBackground = #FFFFFF;
    xOutColourBackgroundHover = #FF0000;
  }
}
