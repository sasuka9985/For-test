/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage fighter;
PImage hp;
PImage treasure;
PImage enemy;

int x; // background moving
int HP;
int tX,tY; // treasure position
int eX; // enemy position

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  enemy=loadImage("img/enemy.png");
  
  HP=floor(random(8,201));
  tX=floor(random(0,600));
  tY=floor(random(0,440));
}

void draw() {
  // your code
  
  //background
  x++;x%=1280;
  image(bg1,x,0);
  image(bg2,-640+x,0);
  image(bg1,-1280+x,0);
  
  //treasure
  image(treasure,tX,tY);
  
  //fighter
  image(fighter,570,215);
  
  //hp
  fill(255,0,0);
  rect(16,11,HP,20);  //8~200
  image(hp,10,10);

  //enemy
  eX+=3; eX%=640;
  image(enemy,eX,300);
}
