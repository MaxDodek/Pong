void game () { //ask about enforcing ball limits - ask him if I've already done that, I don't understand

  background (torquoise);

  //Scoreboard
  textSize (50);
  fill(darkgreen);
  text(leftscore, width/4, 100);
  fill(black);
  text(rightscore, 3*width/4, 100);
  text(timer, width/2, 100);
  timer--;


  //paddles
  fill(yellow);
  stroke(yellow);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles ***May need to prevent paddles from going higher or lower to solve a weird problem
  if (AI ==false) {
    if (wkey==true) lefty=lefty-5;
    if (skey == true) lefty = lefty+5;
  } else {

    if (y<lefty) lefty=lefty-5; //Maybe make different levels if it's possible
    if (y>lefty) lefty=lefty+5;
  }

  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;


  if (lefty>=height-balld -100) {//fix ball code- is this effectingit???
    lefty= height-balld -100;
  }
  if (lefty<height/100+ 92+100) { //ask mr. Peletier
    lefty=height/100+ 92 +100;
  }

  if (righty>=height-balld-100) {
    righty= height-balld-100;
  }
  if (righty<height/100+ 92+100) { //ask mr. Peletier
    righty=height/100+ 92+100;
  }


  //ball
  circle(x, y, balld);


  //move ball{
  if (timer<0) {
    x=x+vx;
    y=y+vy;
    println(vx+", "+vy);
  }



  //scoring
  if (x<balld/2) {
    rightscore++; //these do the same thing.rightscore =rightscore+1
    x=width/2;
    y=height/2;
    timer=100;
    vx=-4;
    vy=-4;
  }

  if (x>width-balld/2) { // why does it then go onto the same side which it was socred on
    leftscore++; //these do the same thing.rightscore =rightscore+1
    x=width/2;
    y=height/2;
    timer=100;
    vx=4;
    vy=-4;
  }
  println(x<balld/2);

  //bouncing


  if (y<balld/2||y>height-balld/2) {
    vy*=-1;
  }

  if (dist(leftx, lefty, x, y) <= balld/2 + leftd/2) { //why not working***
    vx=(x - leftx)/10;
    vy =(y - lefty)/10;
  }
  if (dist(rightx, righty, x, y) <= balld/2 + rightd/2) { //why not working***
    vx=(x - rightx)/10;
    vy =(y - righty)/10;
  }

  if (leftscore==3) {
    mode=GAMEOVER;
  }
  if (rightscore==3) {
    mode=GAMEOVER;
  }
}




void gameClicks () {
}
