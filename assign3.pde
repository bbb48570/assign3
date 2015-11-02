PImage fighter;
PImage backgroungImg;
PImage backgroungImg1;
PImage enemy;
PImage hp;
PImage treasure;

int x;
int y;
int hpp;
int z; //treasure x
int x1;
int x2;

int k;
int a;
int b;
int p;
int n;
int y1;
int p1;
/* please implement your assign1 code in this file. */

void setup () {
  hpp=floor(random(100,255));
  x=1;
  y=floor(random(20,100));
  z=floor(random(20,400));
  y1=floor(random(20,100));
  size(640,480) ;  // must use this size.
  
  x1=1;
  x2=-639;
  
  
  
  backgroungImg=loadImage("img/bg1.png");
  backgroungImg1=loadImage("img/bg2.png");
  fighter=loadImage("img/fighter.png");
  enemy=loadImage("img/enemy.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  // your code
}

void draw() {
  
  
  if(x2==639){
    x2=-639;
  }
  
  if(x1==639){
  x1=-639;
  }
  
  image(backgroungImg,x2=x2+1,0);
  
  image(backgroungImg1,x1=x1+1,0);
  x%=2500;
  
  image(fighter,550,240);
  
  image(treasure,z,y);
  
  rectMode(CORNERS);
  
  fill(255,0,0);
  rect(55,20,hpp,50);
  
  image(hp,50,20);
  //  
  
  for(p=0;p>=-280;p-=70)
  {
    pushMatrix();  
  translate(x++,y);
  image(enemy,p,y);  
   popMatrix();  
  }
  pushMatrix();
  translate(x++,y1);
  image(enemy,-400+p,70);
  image(enemy,-470+p,120);
  image(enemy,-540+p,170);
  image(enemy,-610+p,220);
  image(enemy,-680+p,270);
  popMatrix();
  
  pushMatrix();
  translate(x++,y1);
  image(enemy,-1300+p,200);
  image(enemy,-1350+p,150);
  image(enemy,-1350+p,250);
  image(enemy,-1400+p,100);
  image(enemy,-1400+p,300);
  image(enemy,-1450+p,150);
  image(enemy,-1450+p,250);
  image(enemy,-1500+p,200);
  popMatrix();

  
  // your code
}
