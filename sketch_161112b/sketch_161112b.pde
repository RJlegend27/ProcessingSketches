int drop = 0;
int randomNumber =20;
int score = 0;
void setup() {
  size(500, 500);
}
void draw() {
  background(200, 6, 109);

  

  fill(0, 100, 225);
  noStroke();
  ellipse(randomNumber, drop+=12, 25, 50);

  if (drop>500) {
    drop = 0;
    randomNumber = (int) random(-20, 500);
  }
  fill(0, 0, 0);
  rect (mouseX, 450, 80, 50);

  fill(0, 0, 0);
  if (drop>490) {

    checkCatch(randomNumber);
  }
  textSize(16);
  text("Score " + score, 20, 20);
}

void checkCatch(int x) {
  if (x > mouseX && x < mouseX+80) {
    score++;
    drop=0;
    randomNumber = (int) random(-20, 500);
  } else if (score>0) {
    score--;
    drop=0;
    randomNumber = (int) random(-20, 500);
    println("Your score is now " + score);
  }
}

