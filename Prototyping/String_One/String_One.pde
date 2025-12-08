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
float stringDivX = appWidth*5/20.8;
float stringDivY = appHeight*1/17;
float stringDivWidth = appWidth*10/20.8;
float stringDivHeight = appHeight*1/10; //** make smaller to test Landscape 7/17 for normal annd 1/10 for titlel
//
//string, text, liyeral
String titletom = "tomates!";
String title = "tomates!";
String titletoma = "tomates!";
//Note: DIV to "see" variables
//println("start of console"); //error; in case CONSOLE memory not enough
//Fonts from OS
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList);
int fontSize = 35; //Entire Program
PFont titleFont; ///FOnt VAr name
String TimesNewRomanPSBoldItalicMT = "TimesNewRomanPSBoldItalicMT";

titleFont = createFont (TimesNewRomanPSBoldItalicMT, fontSize);
//Tools / Create FOnt / Find Font / Do Not Press "OK",known conflict between load
//
rect ( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
color purpleInk = #AACAF4; //HexiDecimal
textFont(titleFont, fontSize); //see vaiabkle note
fill(purpleInk); //ink grey scale 0-255
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
