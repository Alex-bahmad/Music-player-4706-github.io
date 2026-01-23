

//fullScreen(); //Landscape
//size(700, 900); //Portrait
//int appWidth = displayWidth; //width
//int appHeight = displayHeight; // height
//
//Music Loading - STRUCTURED Review
//minim = new Minim(this);
//String upArrow = "../../";
//String MusicFolder = "Music/"; //developer Specific
//String songName1 = "Cycles";
//String fileExtension_mp3 = ".mp3";
//
//String musicDirectory = upArrow + MusicFolder;
//String file = musicDirectory + songName1 + fileExtension_mp3;
//println("Music Pathway", musicDirectory);
//println("full Music File Pathway", file);
//playList[ currentSong ] = minim.loadFile( file );
//println("Did the music and sound load properly");
//printArray(playList);



import ddf.minim.*;

Minim minim;
int numberOfSong = 3;
AudioPlayer[] playList = new AudioPlayer[numberOfSong];
int currentSong = 0;

void setup() {
  size(700, 900); // or fullScreen();
  
  minim = new Minim(this);

  String upArrow = "../../";
  String MusicFolder = "Music/";
  String fileExtension_mp3 = ".mp3";

  // List all songs
  String[] songNames = {"Cycles", "Eureka", "Beat_Your_Competition"};

  // Load all songs into the playlist
  for (int i = 0; i < numberOfSong; i++) {
    String filePath = upArrow + MusicFolder + songNames[i] + fileExtension_mp3;
    println("Loading song: " + filePath);
    playList[i] = minim.loadFile(filePath);

    if (playList[i] == null) {
      println("Error: Song " + i + " not loaded!");
    }
  }
  
  println("All songs loaded:");
  printArray(playList);
}

void togglePlay() {
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
  } else {
    playList[currentSong].rewind();
    playList[currentSong].play();
  }
}

void nextSong() {
  // Stop current song if playing
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
  }

  // Move to next song
  currentSong++;
  if (currentSong >= numberOfSong) currentSong = 0;

  playList[currentSong].play();
}
