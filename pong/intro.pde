void intro() {
  background (lightpurple);
  gameover.pause();
  gameover.rewind();
  theme.rewind();
  stroke(blurple);
  circle(x,y,d+40);
  

  
  //im gonna try to make a like circle thing just float across
  
  
  
  //wait im just gonna have it bounce
  x = x + vx;
  y = y + vy;
  
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
    //oki cool ball works
   
  }
  //title
  fill(0);
  textSize(300);
  text("PONG", -20, 400);
  
  //button for game yuh
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
    stroke(255);
  } else {
    stroke(darkpurple);
  }
  
  
  //button
  fill(blurple);
  strokeWeight(5);
  rect(100,500,200,100);
  
  if (mouseX > 500 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
    stroke(255);
  } else {
    stroke(darkpurple);
  }
  
  rect(500,500,200,100);
  
  //text time :O
  fill(255);
  textSize(30);
  text("single player", width/2-293, 560);
  text("two player", width/2+125, 560);
  
 
}
  
  //p1
void introClicks(){
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
  mode = GAME;
  AI = true;
  }
  //p2
  if (mouseX > 500 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
  mode = GAME;
  AI = false;
  }
}
