import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int leftscore, rightscore, timer;

//entity
float leftx, lefty, leftd, rightx, righty, rightd; //paddle
float ballx, bally, balld; //ball
int iball;
float x, y, d;

//testing
float vx, vy;

//keyboard
boolean wkey, skey, upkey, downkey;
color lightpurple = #CAA8F5;
color blurple = #9984D4;
color midpurple = #592E83;
color darkpurple = #230C33;
color brown = #B27C66;

boolean AI;
AudioPlayer bump, theme, coin, gameover;
Minim minim;
void setup() {
  size(800, 800);
  mode = INTRO;
  
  //paddle int
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //testing
  vx = random(-10,10);
  vy = -5;
  iball = 0;
  x = width/2;
  y = height/2;
  d = 100;
  //keyboard
  wkey = skey = upkey = downkey = false;
  // did i just not initialize the score and never noticed???
  //oh well? idk
  timer = 100;
  
  //
  minim = new Minim(this);
  bump = minim.loadFile("bump.wav");
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  gameover = minim.loadFile("gameover.wav");
  
}


//pong
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
   game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
 }
  
  
  
  
}
