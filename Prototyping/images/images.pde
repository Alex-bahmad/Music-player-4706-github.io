/* Aspect Ratio: Bike Only Demonstration
- Old Man
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
float RDivX = appWidth*5/20.8;
float RDivY = appHeight*1/17;
float RDivWidth = appWidth*10/20.8;
float RDivHeight = appHeight*7/17;
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images Dependancy/Images/"; //**Akward
String R = "R";
String fileExtensionJPG = ".jpg";
String RPathway1 = upArrow + folder + R + fileExtensionJPG;
//println("R Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
//
PImage image = loadImage( RPathway1 );
int imageWidth1 = 3840; //hardcoded
int imageHeight1 = 2160; //hardcoded
//Aspect Ratio
float imageAspectRatio_LessOne = ( imageWidth1 >= imageHeight1 ) ? imageWidth1/imageHeight1 : ; //Ternary Operator
//Hardcoded 
println(imageAspectRatio_LessOne);
//DIV
rect( RDivX, RDivY, RDivWidth, RDivHeight );
//
image(image, RDivX, RDivY, RDivWidth, RDivHeight );
//image(image1, DivX, DivY, imageWidth1, imageHeight1 );
