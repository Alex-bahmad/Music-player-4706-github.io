/* Hearing Music and Sound Effects
 - Reading Code with CTRL-T & Braces
 - Global Variable V Local Variable, Garbage Collection
 */
//
// Library Notes
// - File / Sketch / Import Library / Manage Libraries
// - We use Minim for Sound and Sound Effects
// - Able to Google-search libraries to make your project easier
// - Documentation: https://code.compartmental.net/minim/
// - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
// - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
//
// ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
// - Processing-Java Libraries must be installed into the IDE
// - Java Libraries simply require the 'import' declaration
//

// Library  Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim; // initiates entire class
int numberOfSongs = 3; 
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = 0; // start at zero

void setup() {
  // Display
  size(900, 500); // width, height
  int appWidth = width;
  int appHeight = height;

  // Initialize Minim
  minim = new Minim(this);

  // Folder structure for music and sound
  String upArrow = "../../"; 
  String musicFolder = "Music/"; 
  String soundEffectsFolder = "Sound Effects/"; 
  String fileExtension_mp3 = ".mp3";

  // Song names
  String songName1 = "Cycles";
  String songName2 = "Beat_Your_Competition";
  String songName3 = "Eureka";
  String soundEffect1 = "Car_Door_Closing (1)";

  // Full paths
  String musicDirectory = upArrow + musicFolder;
  String soundEffectsDirectory = upArrow + musicFolder;

  // Load songs
  playList[0] = minim.loadFile(musicDirectory + songName1 + fileExtension_mp3);
  playList[1] = minim.loadFile(musicDirectory + songName2 + fileExtension_mp3);
  playList[2] = minim.loadFile(musicDirectory + songName3 + fileExtension_mp3);

  // Load sound effect
  println(soundEffectsDirectory);
  soundEffects[0] = minim.loadFile(soundEffectsDirectory + soundEffect1 + fileExtension_mp3);

  // Check if music and sound loaded properly
  if (playList[0] == null || playList[1] == null || playList[2] == null || soundEffects[0] == null) {
    println("ERROR: Music or sound effect did not load properly!");
    printArray(playList);
    printArray(soundEffects);
  }

  // Play first song
  if (playList[currentSong] != null) {
    playList[currentSong].play();
  }
}

void draw() {
  // Empty  can be used for visuals if needed
}

void mousePressed() {
  // Empty
}

void keyPressed() {
  // Empty
}
