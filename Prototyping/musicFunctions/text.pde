/* Text Tab
 - Handles displaying strings in DIVs
 - Adjusts font size to fit DIVs
 - Compatible with dark mode
 */

// Global variables for text boxes
String boxText = "tomates";
float[] stringDivWidth = new float[3];
float[] stringDivX = new float[3];
float[] stringDivY = new float[3];
float[] stringDivHeight = new float[3];

// Font variables
PFont boxFont;
String fontName = "Bahnschrift";
float fontSize = 64;

void textSetup() {
  // Initialize font
  boxFont = createFont(fontName, fontSize);

  // Setup DIV dimensions based on display
  stringDivWidth[0] = appWidth * 6/20.8;
  stringDivWidth[1] = appWidth * 4/20.8;
  stringDivWidth[2] = appWidth * 8/20.8;

  stringDivX[0] = appWidth * 5/20.8;
  stringDivX[1] = appWidth * 5/20.8;
  stringDivX[2] = appWidth * 5/20.8;

  stringDivY[0] = appHeight * 2/17;
  stringDivY[1] = appHeight * 7/17;
  stringDivY[2] = appHeight * 12/17;

  stringDivHeight[0] = appHeight * 3.5/17;
  stringDivHeight[1] = appHeight * 3.5/17;
  stringDivHeight[2] = appHeight * 3.5/17;

  adjustFontToFit();
}

void adjustFontToFit() {
  textFont(boxFont, fontSize);
  textAlign(CENTER, CENTER);

  float shrinkFactor = 0.99; // reduce font size until it fits

  for (int i=0; i<3; i++) {
    while (textWidth(boxText) > stringDivWidth[i]) {
      fontSize *= shrinkFactor;
      textFont(boxFont, fontSize);
    }
  }
}

void drawText() {
  // Choose color based on dark mode
  if (nightMode) fill(200);
  else fill(0);

  textFont(boxFont, fontSize);
  for (int i=0; i<3; i++) {
    text(boxText, stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i]);
  }
}
