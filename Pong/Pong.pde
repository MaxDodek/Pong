//Pong
//Max Dodek
//2..3
//Apr. 11, 2022



//mode framework
int mode; // This is similar way to how real video games that are more complex are made
final int INTRO =1; // final makes it so that these can't change anymore
final int GAME = 2;
final int PAUSE =3;
final int GAMEOVER = 4;


//colour code - tennis style, from: https://www.colourlovers.com/palette/109128/Seond_Loser
color yellow = #E2F311;
color lightgreen = #9BD739;
color torquoise = #1AA584;
color darkgreen = #135545;
color black = #0D0D0D;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;



//keyboard variables

boolean wkey, skey, upkey, downkey;

void setup() { // should I do mode center???
  size (1000, 800);
  mode = INTRO;
  rectMode(CENTER);
  textAlign(CENTER);

  //initialize paddles:
  //left
  leftx = 0;
  lefty=height/2;
  leftd=200;

  //right
  rightx=width;
  righty=height/2;
  rightd=200;

  //initialize ball
  ballx=width/2;
  bally=height/2;
  balld=100;

  //initialize keyboard var
  wkey=skey=upkey=downkey=false;
}

void draw () { // After draw, I can do void intro, void game, etc. instead of using tabs
  if (mode==INTRO) {
    intro();
  } else if (mode ==GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println("Mode error:"+ mode);
  }
}
