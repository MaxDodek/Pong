//should I have a

void intro () {
 background(lightgreen);
 
 //title
 fill(darkgreen);
 rect(width/2, height/5,width/2,height/8);
 fill(lightgreen);
 textSize(100);
 text("PONG", width/2, height/4.3);
 
 //start game
 fill(darkgreen);
 strokeWeight(2);
 stroke(black);
 tactile(width/2, height/1.5,width/5,height/10);
 rect(width/2, height/1.5,width/5,height/10);
 fill(lightgreen);
 textSize(35);
 text("Start Game", width/2, height/1.5);
 strokeWeight(0);
 stroke(lightgreen);
 
}

void introClicks () {
if (isClicking(width/2, height/1.5,width/5,height/10) == true) { //to start game
    mode=GAME;
}
}

void tactile(float x, float y, float w, float h){
 if (mouseX > x - w/2 && mouseX< x + w/2 && mouseY> y - h/2 && mouseY<y+h/2) {
    stroke (black);
    strokeWeight(1);
  } else {
    stroke(black);
    strokeWeight(3.5);  
}
}
