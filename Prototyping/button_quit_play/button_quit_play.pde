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
float closeX, closeY, closeWidth, closeHeight;
float closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2;
float closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2;

// Play button variables
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1;
float playSymbolX2, playSymbolY2;
float playSymbolX3, playSymbolY3;
//
Boolean playButton;
Boolean closeButton;
//
color resetBackground, resetInk;
color playColourBackground, playColourSymbol, playColourBackgroundHover, playColourSymbolHover;
color closeColourBackground, closeColourBackgroundActivated;
//
void setup() {
  size(600, 400);
  appWidth = width;
  appHeight = height;

  // Close button
  closeX = appWidth * 24.7/28.0;
  closeY = appHeight * 1/17.0;
  closeWidth = appWidth * 2/28.0;
  closeHeight = appHeight * 2/17.0;
  closelineLine1X1 = closeX + closeWidth * 1/4;
  closelineLine1Y1 = closeY + closeHeight * 1/4;
  closelineLine1X2 = closeX + closeWidth * 3/4;
  closelineLine1Y2 = closeY + closeHeight * 3/4;
  closelineLine2X1 = closeX + closeWidth * 3/4;
  closelineLine2Y1 = closeY + closeHeight * 1/4;
  closelineLine2X2 = closeX + closeWidth * 1/4;
  closelineLine2Y2 = closeY + closeHeight * 3/4;

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
  closeButton = false;

  // Colours
  resetBackground = #FFFFFF;
  resetInk = #000000;

  // Play button colours
  playColourBackground = #76E2FF; //
  playColourBackgroundHover = #A6F0FF; //
  playColourSymbol = #76FCFF;
  playColourSymbolHover = #FFFFFF; //

  // Close button colours
  closeColourBackground = #FFFFFF;
  closeColourBackgroundActivated = #76FCFF;
}
//
void draw() {
  background(resetBackground);

  //  CLOSE BUTTON
  if (mouseX > closeX && mouseX < closeX + closeWidth &&
    mouseY > closeY && mouseY < closeY + closeHeight) {
    closeButton = true;
    fill(closeColourBackgroundActivated); // hover colour
  } else {
    closeButton = false;
    fill(closeColourBackground); // normal colour
  }
  stroke(playColourSymbol);
  rect(closeX, closeY, closeWidth, closeHeight);
  line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
  line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);

  // play BUTTON
  if (mouseX > playDivX && mouseX < playDivX + playDivWidth && mouseY > playDivY && mouseY < playDivY + playDivHeight) {
    playButton = true;
    fill(playColourBackgroundHover); // hover thing
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolHover); // hover thing
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  } else {
    playButton = false;
    fill(playColourBackground); // normal thing
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  }

  // Draw the triangle thing
}
//
void mousePressed() {
  if (playButton) {
    println("play music");
  }
  if (closeButton) {
    println("close app");
  }
}
//
void keyPressed() {
}
//
