/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
  - We use Minim for Sound and Sound Effects
  - Able to Google-search libraries to make your project easier
  - Documentation: https://code.compartmental.net/minim/
  - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
  
  ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
  - Processing-Java Libraries must be installed into the IDE
  - Java Libraries simply require the 'import' declaration
*/
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//lowkirkenuiely
//Global Varaibles
Minim minim; //initates entire class
int numberOfSong = 3; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSong ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSong - numberOfSong; //ZERO, math Property
//
//Display
//fullScreen(); //Landscape
size(700, 900); //Portrait
int appWidth = width; //width
int appHeight = height; // height
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "../../";
String MusicFolder = "Music/"; //developer Specifitc
String normalFolder = "normal/"; //developer Specifitc
String songName1 = "Cycles";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + MusicFolder; //concatenation
String file = musicDirectory + songName1 + fileExtension_mp3;
println("Music Pathway", musicDirectory);
println("full Music File Pathway", file);
//println("Full Music File Pathway", file) "Pathway", musicDirectory);
//
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling and Library installed, sletch / import Library 
//
println("Did the music and sound load properly");
printArray(playList);

//deal with null
