void colourPopualation() {
  nightModeVariables();
  buildingColours();
}//End colour popilatiion
//
void nightModeVariables() {
  if (nightMode==false) {
    nightMode=true;
  } else {
    nightMode=false;
  }
}//end night mode variables
//couler pop
//

void buildingColours() {size(600, 400);
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

  // Colours
  resetBackground = #FFFFFF;
  resetInk = #000000;

  // Play button colours
  playColourBackground = #76E2FF; //
  playColourBackgroundHover = #A6F0FF; //
  playColourSymbol = #76FCFF;
  playColourSymbolHover = #FFFFFF; //

  // Close button colours
  xOutColourBackground = #FFFFFF;
  xOutColourBackgroundHover = #76FCFF;
}
