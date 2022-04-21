//should I have a

void intro () {
  background(lightgreen);

  //title
  fill(darkgreen);
  rect(width/2, height/5, width/2, height/8);
  fill(lightgreen);
  textSize(100);
  text("PONG", width/2, height/4.3);

  //start game
  fill(darkgreen);
  strokeWeight(2);
  stroke(black);

  //Start
  tactile(width/2, height/1.5, width/5, height/10);
  rect(width/2, height/1.5, width/5, height/10);
  fill(lightgreen);
  textSize(35);
  text("Start Game", width/2, height/1.5);
  strokeWeight(0);
  stroke(lightgreen);


  //1 Player
  tactile(width/1.4, height/1.5, width/5, height/10);
  fill(darkgreen);
  rect(width/1.4, height/1.5, width/5, height/10);
  fill(lightgreen);
  textSize(35);
  text("1 Player", width/1.4, height/1.5);
  strokeWeight(0);
  stroke(lightgreen);

  //2 Player
  tactile(width/3.5, height/1.5, width/5, height/10);
  fill(darkgreen);
  rect(width/3.5, height/1.5, width/5, height/10);
  fill(lightgreen);
  textSize(35);
  text("2 Player", width/3.5, height/1.5);
  strokeWeight(0);
  stroke(lightgreen);
}

void introClicks () {
  //start game
  if (isClicking(width/2, height/1.5, width/5, height/10) == true) { //to start game
    mode=GAME;
  }
  //1 Player
  if (isClicking(width/1.4, height/1.5, width/5, height/10) == true) { //to start game
    mode=GAME;
    AI =true;
  }

  //2 Players
  if (isClicking(width/3.5, height/1.5, width/5, height/10) == true) { //to start game
    mode=GAME;
    AI=false;
  }
}

void tactile(float x, float y, float w, float h) {
  if (mouseX > x - w/2 && mouseX< x + w/2 && mouseY> y - h/2 && mouseY<y+h/2) {
    stroke (black);
    strokeWeight(1);
  } else {
    stroke(black);
    strokeWeight(3.5);
  }

  
 
}
