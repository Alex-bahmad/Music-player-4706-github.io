// Hearing Music and Sound Effects
//-43qeing code with CTRL T
//
//
//Library - Minim
//Reminder: activeare the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 3; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
minim = new Minim(this);
String upArrow = "../../";
String MusicFolder = "Music/"; //developer Specifitc
String normalFolder = "normal/"; //developer Specifitc
String songName1 = "Cycles";
String fileExtension_mp3 = ".mp3";
//
//
  void setup() {
} //End setup
//
void draw() {
} //end draw
//
void mousePressed() {
} //end mouse pressed
//
void keyPressed() {
} //End key Pressed
//
//End MAIN Program
