/* Creating Buttons - HoverOver in draw()
 - Add Minim from Sketch / Import Library / Minim
 - Display: fullScreen() v. use shorter side as a Square based on fullScreen
 - DIVs and Global Variables, includes DIV Population
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
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
Boolean playButton=false, xOutButton=false;
Boolean nightMode=false;

// Colors
color resetBackground, resetInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color xOutColourBackground, xOutColourBackgroundActivated;

void setup() {
  fullScreen(); // teacher style fullScreen
  appWidth = displayWidth;
  appHeight = displayHeight;

  // X button
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

  // Draw DIVs once (teacher style)
  rect(xOutX, xOutY, xOutWidth, xOutHeight);
  line(xOutlineLine1X1, xOutlineLine1Y1, xOutlineLine1X2, xOutlineLine1Y2);
  line(xOutlineLine2X1, xOutlineLine2Y1, xOutlineLine2X2, xOutlineLine2Y2);

  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
}

void draw() {
  // teacher's draw() is empty
}

void mousePressed() {
  // teacher's mousePressed() is empty
}

void keyPressed() {
  // teacher's keyPressed() is empty
}

void quitButton() {
  // teacher's quitButton() is empty
}
