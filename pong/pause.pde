 void pause() {
  fill(blurple);
  textSize(120);
  text("PAUSE", 210, 400);
 }
 
 void pauseClicks(){
 if (mouseX > 10 && mouseX < 80 && mouseY > 10 && mouseY < 80) {
  mode = GAME;
  }
 }
