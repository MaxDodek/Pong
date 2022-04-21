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
float x, y, balld;
boolean AI; //Player#




//keyboard variables

boolean wkey, skey, upkey, downkey;


//Game Variables
float vx, vy; //target velocity

//scoring variables
int leftscore, rightscore, timer;



void setup() { // should I do mode center???
  size (1000, 800, P2D);
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
  x=width/2;
  y=height/2;
  balld=100;

  //initialize keyboard var
  wkey=skey=upkey=downkey=false;


  //game variables initialization
  x=width/2;
  y=height/2;
  vx=4;// **how do I make sure that it won't just go up and down ;random(-4, 4)
  vy= 4;

  AI = true;
    //initialize scoring
    rightscore=0;
  leftscore=0;
  timer = 100;
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
