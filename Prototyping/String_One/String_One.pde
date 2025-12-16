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
//Width Array
stringDivWidth[0] = appWidth*6/20.8; //6/20.8
stringDivWidth[1] = appWidth * 4/20.8; //4/20.8
stringDivWidth[2] = appWidth * 8/20.8; //8/20.8
//X Array
stringDivX[0] = appWidth * 5/20.8; //5/20.8
stringDivX[1] = appWidth * 5/20.8; //5/20.8
stringDivX[2] = appWidth * 5/20.8; //5/20.8
//Y Array
stringDivY[0] = appHeight * 2/17; //2/17
stringDivY[1] = appHeight * 7/17; //8/17
stringDivY[2] = appHeight * 12/17; //14/17
//Height Array
stringDivHeight[0] = appHeight * 3.5/17; //5/17
stringDivHeight[1] = appHeight * 3.5/17; //5/17
stringDivHeight[2] = appHeight * 3.5/17; //5/17

//
//string, text, liyeral
String box = "tomates";
//Note: DIV to "see" variables
//println("start of console"); //error; in case CONSOLE memory not enough
//Fonts from OS
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList);
float fontSize = appHeight; //Entire Program
PFont boxFont; ///FOnt VAr name
String Bahnschrift = "Bahnschrift";
float BahnschriftFontSize = 64.0;
boxFont = createFont (Bahnschrift, fontSize);
textSize(BahnschriftFontSize);
//Tools / Create FOnt / Find Font / Do Not Press "OK",known conflict between load
//
for ( int i=0; i<3; i++)
rect (stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );

println(fontSize, Bahnschrift, boxFont); //inspect pfont-type varaible for
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
color RedInk = #AACAF4; //HexiDecimal
color BlueInk = #FFFFFF; //Grey Scale is 255
color resetInk = BlueInk;
fill(RedInk);
//grey scale 0-255
textAlign (CENTER, CENTER);
//WHILE Error Check
textFont(boxFont, fontSize); //see vaiabkle note
float constrantDecrease = 0.99;  //99% of origonal or 1% decrease
//FOR Loop Error,copy = paste three times
for ( int i=0; i<=2; i++ ) {
  while ( textWidth( box ) > stringDivWidth[i] ) {
  //ERROR :infinite loop, requires exit() and println()
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(boxFont, fontSize); //see vaiabkle note
 } //End WHILE Error Check Text-wrap
} //End FOR Loop, font SIze CHeck in DIVS
while ( textWidth( box ) > stringDivWidth[0] ) {
  //ERROR :infinite loop, requires exit() and println()
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(boxFont, fontSize); //see vaiabkle note
} //End WHILE Error Check Text-wrap
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
textFont(boxFont, fontSize); //see vaiabkle note
//fill(purpleInk); //ink grey scale 0-255
text(box, stringDivX[0], stringDivY[0], stringDivWidth[0], stringDivHeight[0] );
text(box, stringDivX[1], stringDivY[1], stringDivWidth[1], stringDivHeight[1] );
text(box, stringDivX[2], stringDivY[2], stringDivWidth[2], stringDivHeight[2] );
fill(resetInk);
//
//End Program
