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
float stringDivHeight = appHeight*7/17; //** make smaller to test Landscape 7/17 for normal annd 1/10 for titlel
//
//string, text, liyeral
String titletom = "tomates!";
String title = "tomates!";
String titletoma = "tomates!";
//Note: DIV to "see" variables
rect ( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
