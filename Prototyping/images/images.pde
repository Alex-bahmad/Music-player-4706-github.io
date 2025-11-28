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
float RDivHeight = appHeight*7/17; //** make smaller to test Landscape
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
int RWidth1 = 3840; //hardcoded
int RHeight1 = 2160; //hardcoded
//Aspect Ratio
float RAspectRatio_GreaterOne = ( RWidth1 >= RHeight1 ) ? float(RWidth1)/float(RHeight1) : float(RHeight1)/float(RWidth1); //Ternary Operator
//Hardcoded LessOne Aspect Ratio
//How to maek image bigger or smaller
//ERROR: truncating, casting
println("Aspect Ratio >1", RAspectRatio_GreaterOne, "testing for Decimals, formula", RWidth1/RHeight1);
//println("after casting added, aspect Ration >1:", imageAspectRation_greaterOne
//Algorithm Decisions (choice)
//Aspect Ratio
float RWidthAdjusted1 = RDivWidth;
float RHeightAdjusted = ( RWidth1 >= RDivWidth ) ? RWidthAdjusted1 / RAspectRatio_GreaterOne : RWidthAdjusted1 * RAspectRatio_GreaterOne ; //Ternary Operator
/*
imageWidth1
imageDivWidth
imageHeight1
imageDivWidth
if () {} else {} //End If Aspect Ratio
*/
//DIV
rect( RDivX, RDivY, RDivWidth, RDivHeight );
//
//image( image ,RDivX, RDivY, RDivWidth, RDivHeight );
//image(image, imageDivX, imageDivY, imageWidth1, imageHeight1 );
image( R, RDivX, RDivY, RWidthAdjusted1, RHeightAdjusted );
//float imageWidthAdjusted1 = imageDivWidth;
//float imageHeightAdjusted = ( imageWidth >= imageDivWidth ) ? imageWidthAdjusted1 / imageAspectRatio_greaterOne : imageWidthAdjusted1 * imageAspectRatio_GreaterOne; //Ternary Operator
