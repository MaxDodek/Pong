void game () {

  background (torquoise);

  //paddles
  fill(yellow);
  stroke(yellow);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey==true) lefty=lefty-5;
  if (skey == true) lefty = lefty+5;

  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;

  //if (wkey >

  //ball
  circle(ballx, bally, balld);
}



void gameClicks () {
  
}
