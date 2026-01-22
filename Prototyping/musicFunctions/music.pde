/* Music Functions Tab */

import ddf.minim.*;
Minim minim;

int numberOfSongs = 3;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
int currentSong = 0;

void musicSetup() {
  minim = new Minim(this);

  String upArrow = "../../";
  String musicFolder = "Music/";
  String fileExtension = ".mp3";

  String[] songName = {"Cycles", "Eureka", "Groove"};

  for (int i=0; i<numberOfSongs; i++) {
    playList[i] = minim.loadFile(upArrow + musicFolder + songName[i] + fileExtension);
  }
}

void togglePlay() {
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
  } else {
    playList[currentSong].rewind();
    playList[currentSong].play();
  }
}
