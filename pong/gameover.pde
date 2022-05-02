void gameover() {
  background(lightpurple);
  theme.pause();
  gameover.play();
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    stroke(255);
  } else {
    stroke(blurple);
  }
     fill(lightpurple);
     rect(300,500,200,100);
     
  textSize(36);
  fill(255);
  text("try again?", 320,560);
  
  fill(blurple);
  textSize(120);
  text("GAME OVER", 50, 400);
  
  if (rightscore == 3) {
    textSize(80);
    fill(255);
    text("RIGHT WINS!", 155, 230);  
  }
  
  if (leftscore == 3) {
    textSize(80);
    fill(255);
    text("RIGHT WINS!", 155, 230);  
  }
}
void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
  mode = INTRO;
  ballx = width/2;
  bally = height/2;
  balld = 100;
  righty = 400;
  lefty = 400;
  vx = random(-10,10);
  vy = -5;
  rightscore = 0;
  leftscore = 0;
  }
} 
