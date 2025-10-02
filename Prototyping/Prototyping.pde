print("HelloWorld");
println("I i just wanted to be cool.");
//
//
/* DIVs: 2D Rectangles
*/
fullScreen(); //dispalyWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 1/4;
float imageY = appHeight * 25/100;
float imageWidth = appWidth * 1/2;
float imageHeight = appHeight * 1/2;
float playX1 = imageX + imageWidth * 1/4;
float playY1 = imageY + imageHeight * 1/4;
float playX2 = imageX + appWidth * 3/4;
float playY2 = appHeight * 1/2;
float playX3 = imageX + appWidth * 1/4;
float playY3 = imageY + imageHeight * 3/4;
//
rect(stopX, stopY, stopWidth, stopHeight);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
rect(aboutthesongX, aboutthesongY, aboutthesongWidth, aboutthesongHeight);
rect(imageX, imageY, imageWidth, imageHeight);
rect(artistX, artistY, artistWidth, artistHeight);
rect(trackX, trackY, trackWidth, trackHeight);
rect(totaltimeX, totaltimeY, totaltimeWidth, totaltimeHeight);
rect(timeclipseX, timeclipseY, timeclipseWidth, timeclipseHeight);
rect(rewindX, rewindY, rewindWidth, rewindHeight);
rect(fastfowardX, fastfowardY, fastfowardWidth, fastfowardHeight);
rect(backfowardX, backfowardY, backfowardWidth, backfowardHeight);
rect(pauseX, pauseY, pauseWidth, pauseHeight);
rect(playX, playY, playWidth, playHeight);
rect(backwindX, imageY, imageWidth, imageHeight);
rect(suffleX, suffleY, suffleWidth, suffleHeight);
rect(reapeatX, reapeatY, reapeatWidth, reapeatHeight);
rect(pervisoeX, imageY, imageWidth, imageHeight);
rect(nextX, imageY, imageWidth, imageHeight);
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
