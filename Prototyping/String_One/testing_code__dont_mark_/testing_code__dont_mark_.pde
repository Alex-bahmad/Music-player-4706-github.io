/* String
 */
//
//Display
fullScreen(); //Landscape
//size(700, 900); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; // height
println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreendisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
float[] stringDivWidth = new float[3];
float[] stringDivX = new float[3];
float[] stringDivY = new float[3];
float[] stringDivHeight = new float[3]; //** make smaller to test Landscape 7/17 for normal annd 1/10 for titlel

//Width Array (smaller boxes)
stringDivWidth[0] = appWidth*6/40.0;  // originally 6/20.8
stringDivWidth[1] = appWidth*4/40.0;  // originally 4/20.8
stringDivWidth[2] = appWidth*8/40.0;  // originally 8/20.8

//X Array
stringDivX[0] = appWidth * 5/20.8;
stringDivX[1] = appWidth * 5/20.8;
stringDivX[2] = appWidth * 5/20.8;

//Y Array
stringDivY[0] = appHeight * 2/17;
stringDivY[1] = appHeight * 8/17;
stringDivY[2] = appHeight * 14/17;

//Height Array (smaller boxes)
stringDivHeight[0] = appHeight*5/34.0; // originally 5/17
stringDivHeight[1] = appHeight*5/34.0;
stringDivHeight[2] = appHeight*5/34.0;

//
//string, text, liyeral
String title = "tomates";
//Note: DIV to "see" variables
//println("start of console"); //error; in case CONSOLE memory not enough
//Fonts from OS
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList);
float fontSize = appHeight; //Entire Program
PFont titleFont; ///FOnt VAr name
String Bahnschrift = "Bahnschrift";
float BahnschriftFontSize = 64.0;
titleFont = createFont (Bahnschrift, fontSize);
textSize(BahnschriftFontSize);
//Tools / Create FOnt / Find Font / Do Not Press "OK",known conflict between load
//

// Draw the boxes first
for ( int i=0; i<3; i++)
  rect (stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );

println(fontSize, Bahnschrift, titleFont); //inspect pfont-type varaible for
//fontSize = 30.0;
println("Font Size:", fontSize );
/* Aspect Ratio Manipulations ( chnages to variables)
 - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float BahnschriftAspectRatio = fontSize / stringDivHeight[0];
fontSize = stringDivHeight[0]+BahnschriftAspectRatio;
println("Bahnschrift Aspect Ratio;", BahnschriftAspectRatio);
println(); //skip a line
//float YuGothicUISemibold = fontSizeYuGothicUISemibold / stringDivHeight;
//Drawing Text
color purpleInk = #AACAF4; //HexiDecimal
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(purpleInk);
//grey scale 0-255
textAlign (CENTER, CENTER);
//WHILE Error Check
textFont(titleFont, fontSize); //see vaiabkle note
float constrantDecrease = 0.99;  //99% of origonal or 1% decrease
float minFontSize = 5; // prevent infinite loop

//FOR Loop Er
for ( int i=0; i<3; i++ ) {  //3
  while ( textWidth( title ) > stringDivWidth[i] && fontSize > minFontSize) {
    fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
    textFont(titleFont, fontSize); //see vaiabkle note
  } //End WHILE Error Check Text-wrap
} //End FOR Loop, font SIze CHeck in DIVS

while ( textWidth( title ) > stringDivWidth[0] && fontSize > minFontSize) {
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(titleFont, fontSize); //see vaiabkle note
} //End WHILE Error Check Text-wrap
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
textFont(titleFont, fontSize); //see vaiabkle note
//fill(purpleInk); //ink grey scale 0-255
text(title, stringDivX[0], stringDivY[0], stringDivWidth[0], stringDivHeight[0] );
text(title, stringDivX[1], stringDivY[1], stringDivWidth[1], stringDivHeight[1] );
text(title, stringDivX[2], stringDivY[2], stringDivWidth[2], stringDivHeight[2] );
fill(resetInk);
//
//End Program
