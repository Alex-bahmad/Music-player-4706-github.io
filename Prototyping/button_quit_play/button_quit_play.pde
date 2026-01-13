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
float closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2;ftgyvbngtgbyhuvgbyhngbyhnugbyhnubhnujmgbyhnubyhnujgb hnjbyhnujbyhnujbhnujmgyhnujgbyhnutgbyhngbyhnugbyhnugbyhnugbyhnugbyhnugbyhnugbyhnubynujmgbyhnugbyhnugbyhnu


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
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
//
void setup() {
  //display
  size(600, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population

  // Close button
  closeX = appWidth * 24.7/28.0;
  closeY = appHeight * 1/17.0;
  closeWidth = appWidth * 2/28.0;
  closeHeight = appHeight * 2/17.0;
  // line 1
  closelineLine1X1 = closeX + closeWidth * 1/4;
  closelineLine1Y1 = closeY + closeHeight * 1/4;
  closelineLine1X2 = closeX + closeWidth * 3/4;
  closelineLine1Y2 = closeY + closeHeight * 3/4;
  // line 2
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
  //colour Population
  color black = 0; //grey scale, much smaller color, 256 bits
  color white = #FFFFFF; //grey scale
  //canvas: default background and ink
  resetBackground = white;
  resetInk = black;
  //button colours

  color red = #76FCFF;
  color purple = #76FFD3;
  color yellow = #76E2FF;
  color grayScale = 256/2; //example gray scale smmall memory
  color gray = #76C5FF; // exapmple gray scale, large memory
  playColourBackground = yellow;
  playColourSymbol = red;
  playColourBackgroundActivated = yellow;
  playColourSymbolActivated = red;
} //End setup
//
void draw() {
  //println("My mouse is", mouseX, mouseY);
  //button hoverover
  rect(closeX, closeY, closeWidth, closeHeight);
  line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
  line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
  if ( mouseX>playDivX && mouseY<playDivX+playDivHeight) {

    // Close button hover
    if ( mouseX > closeX && mouseX < closeX + closeWidth &&
      mouseY > closeY && mouseY < closeY + closeHeight ) {
      closeButton = true;
    } else {
      closeButton = false;
    }

    // Play button hover
    if ( mouseX > playDivX && mouseX < playDivX + playDivWidth &&
      mouseY > playDivY && mouseY < playDivY + playDivHeight ) {
      playButton = true;
      fill(playColourBackground);
      // Draw play button
      rect(playDivX, playDivY, playDivWidth, playDivHeight);
      triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    } else {
      playButton = false;
    }
  } //End draw
}

//
void mousePressed() {
  if (playButton == true ) {
    println("play music");
  }
  if (closeButton == true ) {
    println("close app");
  }
}//End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
