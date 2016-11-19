import ddf.minim.*;
Minim minim;
AudioSample sound;
int ballX = 300;
int ballY = 250;
int Xspeed = 3;
int Yspeed = 3;
int paddleY = 400;
int paddleX = mouseX;

void setup() {
  minim = new Minim (this);  
  sound = minim.loadSample("ball.wav", 128);
  size(500, 500);
}
void draw() {
  background(75, 25, 150);

  fill(0, 0, 0);
  stroke(200, 25, 25);
  ellipse(ballX+=Xspeed, ballY+=Yspeed, 25, 25);
  if (ballX>=width) {
    Xspeed=-Xspeed;
    sound.trigger();
  } else if (ballX<0) {
    Xspeed=-Xspeed;
    sound.trigger();
    
  }
  if (ballY>height) {
    Yspeed=-Yspeed;
    sound.trigger();
    
  } else if (ballY<0) {
    Yspeed=-Yspeed;
    sound.trigger();
  }
   fill(0,100,255);
  noStroke();
  rect(mouseX,paddleY,100,25);
  if(ballY==paddleY && ballX==mouseX+100){
  Xspeed=-Xspeed;
  }
  if(ballX == mouseX){
  Yspeed=-Yspeed;
  }
}

