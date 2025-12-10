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
float stringDivX1 = appWidth*5/20.8;
float stringDivY1 = appHeight*1/17;
stringDivWidth[1] = appWidth*10/20.8;
float stringDivHeight1 = appHeight*1/10; //** make smaller to test Landscape 7/17 for normal annd 1/10 for titlel
float stringDivX2 = stringDivX1;
float stringDivY2 = appHeight*1/17;
stringDivWidth[2] = appWidth*10/20.8;
float stringDivHeight2 = stringDivHeight1;
float stringDivX3 = stringDivX1;
float stringDivY3 = appHeight*1/17;
stringDivWidth[3] = appWidth*10/20.8;
float stringDivHeight3 = stringDivHeight1;
//
//string, text, liyeral
String title = "tomates!";
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
for ( int i=o; i<3; i++)
rect (title, ( stringDivX[i]), stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
rect (title, stringDivX2, stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
rect (title, stringDivX3, stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
println(fontSize, Bahnschrift, titleFont); //inspect pfont-type varaible for
//fontSize = 30.0;
println("Font Size:", fontSize );
/* Aspect Ratio Manipulations ( chnages to variables)
 - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float BahnschriftAspectRatio = fontSize / stringDivHeight1;
fontSize = stringDivHeight1+BahnschriftAspectRatio;
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
//FOR Loop Error,copy = paste three times
for ( int i=0; i<=3; i++ ) {
  while ( textWidth( title ) > stringDivWidth[i] ) {
  //ERROR :infinite loop, requires exit() and println()
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(titleFont, fontSize); //see vaiabkle note
 } //End WHILE Error Check Text-wrap
} //End FOR Loop, font SIze CHeck in DIVS
while ( textWidth( title ) > stringDivWidth1 ) {
  //ERROR :infinite loop, requires exit() and println()
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(titleFont, fontSize); //see vaiabkle note
} //End WHILE Error Check Text-wrap
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
textFont(titleFont, fontSize); //see vaiabkle note
//fill(purpleInk); //ink grey scale 0-255
text(title, stringDivX1, stringDivY1, stringDivWidth1, stringDivHeight1 );
text(title, stringDivX2, stringDivY2, stringDivWidth2, stringDivHeight2 );
text(title, stringDivX3, stringDivY3, stringDivWidth3, stringDivHeight3 );
fill(resetInk);
//
//End Program
