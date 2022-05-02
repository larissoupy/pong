void game() {
  background(darkpurple);
  
  //line time
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  theme.play();
  
  //draw paddle
  fill(blurple);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //im gonna put text hereeeeeeee
  fill(255);
  textSize(40);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);
 // text(timer, 3*width/4, 550);
  
  timer = timer - 1;
  
  // gonna try coding gameover screen hold a sec
  
  if (rightscore == 3) {
    mode = GAMEOVER;
  }
  if (leftscore == 3) {
    mode = GAMEOVER;
  }
  //move paddle
  if (wkey == true) lefty = lefty - 7;
  if (skey == true) lefty = lefty + 7;
  
  if (AI == false) {
  if (upkey == true) righty = righty - 7;
  if (downkey == true) righty = righty + 7;
  } //else {
    
 // }
 
  if (AI == true){
   if (ballx > width/2+50){
     if (bally < righty) righty = righty -7;
     if (bally > righty) righty = righty +7;
    }
  }
    
  
  if (righty > 800) {
    righty = 0;
  }
  if (righty < 0){
    righty = 800;
  }
  
  
  if (lefty > 800) {
    lefty = 0;
  }
  if (lefty < 0){
    lefty = 800;
  }
  //paddle bounce?
  
    if (dist(rightx,righty,ballx,bally) < rightd/2 + balld/2) {
    vy = (bally- righty)/12;
    vx = (ballx- rightx)/12;
    bump.play();
    bump.rewind();
    
  }
  if (dist(leftx,lefty,ballx,bally) < leftd/2 + balld/2) {
    vy = (bally - lefty)/12;
    vx = (ballx - leftx)/12;
    coin.play();
    coin.rewind();
  }
  //draw ball 
  fill(lightpurple);
  circle(ballx, bally, balld);
  
  //ball move
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
  }
  //
  //bounce left and right
  
  if (ballx < 0) {
    //vx = vx * -1;
    rightscore++;
    ballx = width/2;
    bally = height/2;
    vx = random(-5,5);
    vy = -5;
    timer = 100;

   }
   if (ballx > 800) {
    //vx = vx * -1;
    leftscore++;
    ballx = width/2;
    bally = height/2;
    vx = random(-5,5);
    vy = -5;
    timer = 100;
   }
 if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }
    if (dist(mouseX, mouseY, 40, 40) <50) {
 stroke(255);
  } else {
 stroke(darkpurple);
  }
  
  
  fill(lightpurple);
  rect(10,10,70,70);
  fill(darkpurple);
  rect(25,20,10,50);
  rect(55,20,10,50);
//how make paddle stop
//please
//why wont you stop
//if (righty > 800){
//downkey = false;
//}
bally = max (bally,0);
bally = min (bally,height);
}
// wtf this is really confusing
void gameClicks() {
  if (dist(mouseX, mouseY, 40, 40) <50) {
    mode = PAUSE;
  }
}
