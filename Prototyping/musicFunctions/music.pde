/* Music Functions Tab
   - Using Minim for music playback
   - Handles multiple songs, play/pause, next, and rewind
   - Keeps all original comments and structure
*/

// Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim; // Initiates entire class
int numberOfSongs = 3; // Total songs in playlist
AudioPlayer[] playList = new AudioPlayer[numberOfSongs]; // Playlist array
int currentSong = 0; // Current song index

// Setup music
void musicSetup() {
  minim = new Minim(this); // Mandatory

  // Path setup
  String upArrow = "../../"; // Folder up navigation
  String musicFolder = "Music/"; // Folder containing songs
  String fileExtension = ".mp3"; // File type

  // Songs to load
  String[] songName = {"Cycles", "Eureka", "Beat_Your_Competition"};

  // Load songs
  for (int i = 0; i < numberOfSongs; i++) {
    String filePath = upArrow + musicFolder + songName[i] + fileExtension;
    println("Loading song: " + filePath);
    playList[i] = minim.loadFile(filePath);

    // Check if song loaded
    if (playList[i] == null) {
      println("Error: Song " + i + " (" + songName[i] + ") not loaded!");
    }
  }

  println("All songs loaded:");
  printArray(playList);
}

// Toggle Play/Pause for current song
void togglePlay() {
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
    println("Paused: Song " + currentSong);
  } else {
    playList[currentSong].rewind();
    playList[currentSong].play();
    println("Playing: Song " + currentSong);
  }
}

// Go to next song
void nextSong() {
  // Stop current song if playing
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
  }

  // Move to next song
  currentSong++;
  if (currentSong >= numberOfSongs) currentSong = 0;

  playList[currentSong].play();
  println("Next song: " + currentSong);
}

// Go to previous song
void previousSong() {
  // Stop current song if playing
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
  }

  // Move to previous song
  currentSong--;
  if (currentSong < 0) currentSong = numberOfSongs - 1;

  playList[currentSong].play();
  println("Previous song: " + currentSong);
}
