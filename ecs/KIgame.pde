//Rat Parry | 3 March | ShapeGame
int x,y,tx,ty,score;
float tw;
PImage player, target;


void setup() {
 size(500,500);
 x = width/2;
 y = height/2;
 tx = int(random(20, width-20));
 ty = int(random(20, height-20));
 score = 0;
 tw = 100.0;
 player = loadImage("wut.png");
 target = loadImage("tarrget.png");
}

void draw() {
 background(#576f7a);
 target();
 scorePanel();
 imageMode(CENTER);
 image(player,x,y);
}

void scorePanel() {
fill(#3d4034);
rect(0, 0, width, 30);
fill(#FFFFFF);
textSize(13);
text("Score:"+ score, 20, 18);
}

void target() {
 float d = dist(x,y,tx,ty);
 println(d);
 println(score);
 image(target, tx,ty,tw,tw);
 if(d<tw) {
  score = score + 13;
  tx = int(random(20, width-20));
  ty = int(random(20, width-20));
  tw = 100.0;
  }
 tw = tw - 0.1;
 if(tw <= 10) {
  gameOver();
 }
}

void gameOver() {
 background(#4a2929);
 fill(#FFFFFF);
 textSize(35);
 textAlign(CENTER);
 text("GAME OVER!", width/2, height/2);
 noLoop();
}

void keyPressed() {
 if(y<0) {
   y = height;
 } else if(y>height) {
   y = 0;
 } else if(x<0) {
   x = width;
 } else if(x>width) {
   x = 0;
 }

  
 if (key == 'w' || key == 'W') {
   y = y - 5;
 } else if(key == 's' || key == 'S') {
  y = y + 5;
 } else if(key == 'a' || key == 'A') {
  x = x -5;
 } else if(key == 'd' || key == 'D') {
  x = x + 5;
 }
}
