/* Buttons Tab */ 

void divPopulation() {
  // XOut button top right
  XOutX = appWidth * 9/10;
  XOutY = appHeight * 0/10;
  XOutWidth = appWidth * 1/10;
  XOutHeight = appHeight * 1/10;

  // Play button bottom middle
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playDivX = (appWidth - playDivWidth)/2; // center horizontally
  playDivY = appHeight * 8/10;            // near bottom

  // Play symbol triangle
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight / 2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
}

void setColors() {
  if (nightMode) {
    resetBackground = color(50);
    resetInk = color(200);
    playColourBackground = color(80);
    playColourSymbol = color(220);
    playColourBackgroundHover = color(120);
    playColourSymbolHover = color(255);
    XOutColourBackground = color(80);
    XOutColourBackgroundHover = color(120);
  } else {
    resetBackground = color(255);
    resetInk = color(0);
    playColourBackground = color(118, 226, 255);
    playColourSymbol = color(255);
    playColourBackgroundHover = color(166, 240, 255);
    playColourSymbolHover = color(255);
    XOutColourBackground = color(255);
    XOutColourBackgroundHover = color(200, 0, 0);
  }
}

void hoverOver_draw() {
  // XOut button
  if (mouseX > XOutX && mouseX < XOutX + XOutWidth && mouseY > XOutY && mouseY < XOutY + XOutHeight) fill(XOutColourBackgroundHover);
  else fill(XOutColourBackground);
  rect(XOutX, XOutY, XOutWidth, XOutHeight);
  fill(resetInk);
  textAlign(CENTER, CENTER);
  text("X", XOutX + XOutWidth/2, XOutY + XOutHeight/2);

  // Play button
  if (mouseX > playDivX && mouseX < playDivX + playDivWidth && mouseY > playDivY && mouseY < playDivY + playDivHeight) {
    fill(playColourBackgroundHover);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolHover);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  } else {
    fill(playColourBackground);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  }
}
