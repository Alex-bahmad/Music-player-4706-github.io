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
float[] stringlokWidth = new float[3];
float[] stringlokX = new float[3];
float[] stringlokY = new float[3];
float[] stringlokHeight = new float[3]; //** make smaller to test Landscape 7/17 for normal annd 1/10 for titlel
//Width Array
stringlokWidth[0] = appWidth*6/20.8; //6/20.8
stringlokWidth[1] = appWidth * 4/20.8; //4/20.8
stringlokWidth[2] = appWidth * 8/20.8; //8/20.8
//X Array 
stringlokX[0] = appWidth * 5/20.8; //5/20.8
stringlokX[1] = appWidth * 5/20.8; //5/20.8
stringlokX[2] = appWidth * 5/20.8; //5/20.8
//Y Array
stringlokY[0] = appHeight * 2/17; //2/17
stringlokY[1] = appHeight * 7/17; //8/17
stringlokY[2] = appHeight * 12/17; //14/17
//Height Array
stringlokHeight[0] = appHeight * 3.5/17; //5/17
stringlokHeight[1] = appHeight * 3.5/17; //5/17
stringlokHeight[2] = appHeight * 3.5/17; //5/17

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
rect (stringlokX[i], stringlokY[i], stringlokWidth[i], stringlokHeight[i] );

println(fontSize, Bahnschrift, boxFont); //inspect pfont-type varaible for
//fontSize = 30.0;
println("Font Size:", fontSize );
/* Aspect Ratio Manipulations ( chnages to variables)
 - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float BahnschriftAspectRatio = fontSize / stringlokHeight[0];
fontSize = stringlokHeight[0]+BahnschriftAspectRatio;
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
  while ( textWidth( box ) > stringlokWidth[i] ) {
  //ERROR :infinite loop, requires exit() and println()
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(boxFont, fontSize); //see vaiabkle note
 } //End WHILE Error Check Text-wrap
} //End FOR Loop, font SIze CHeck in DIVS
while ( textWidth( box ) > stringlokWidth[0] ) {
  //ERROR :infinite loop, requires exit() and println()
  fontSize *= constrantDecrease; //Assognment Operator //FontSize = fontSize*0.99
  textFont(boxFont, fontSize); //see vaiabkle note
} //End WHILE Error Check Text-wrap
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
textFont(boxFont, fontSize); //see vaiabkle note
//fill(purpleInk); //ink grey scale 0-255
text(box, stringlokX[0], stringlokY[0], stringlokWidth[0], stringlokHeight[0] );
text(box, stringlokX[1], stringlokY[1], stringlokWidth[1], stringlokHeight[1] );
text(box, stringlokX[2], stringlokY[2], stringlokWidth[2], stringlokHeight[2] );
fill(resetInk);
//
//End Program
