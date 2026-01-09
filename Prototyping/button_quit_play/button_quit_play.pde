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
//
void setup() { //End setup
  //display
  size(600,400);
  //fullScreen();
    appWidth = width;
    appHeight = height;
   //
  //Population
  float closeX = appWidth * 24.7/28.0;
  float closeY = appHeight * 1/17.0;
  float closeWidth = appWidth * 2/28.0;
  float closeHeight = appHeight * 2/17.0;
  // line 1
  float closelineLine1X1 = closeX + closeWidth * 1/4;
  float closelineLine1Y1 = closeY + closeHeight * 1/4;
  float closelineLine1X2 = closeX + closeWidth * 3/4;
  float closelineLine1Y2 = closeY + closeHeight * 3/4;
  // line 2
  float closelineLine2X1 = closeX + closeWidth * 3/4;
  float closelineLine2Y1 = closeY + closeHeight * 1/4;
  float closelineLine2X2 = closeX + closeWidth * 1/4;
  float closelineLine2Y2 = closeY + closeHeight * 3/4;

println(closeX, closeY, closeWidth, closeHeight);
rect(closeX, closeY, closeWidth, closeHeight);
line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
}
void draw() {
println ("My mouse is", mouseX, mouseY);
if ( mouseX > closeX && mouseX < closeX+playDivWidth && mouseY>closeY && mouseY<closeY+playDivHeight) 
  print(" stop, it nomt funny ");
  closeButton = true;
} else {
} //End draw

//
void mousePressed() {
if (playButton == true ) {
println("stop my music");
} else {
} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed 
//
int appWidth, appHeight;
//
//End MAIN Program
