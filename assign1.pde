PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage groundhogImg;
PImage soldierImg;
PImage robotImg;



void setup() {
	size(640, 480, P2D);

}

int r=floor(random(1,4)); //solderR
int x = 0;//solder

int q=floor(random(1,4)); //robotQ


int a=floor(random(1,4));
int b=floor(random(1,4));
int robotX =160+80*a;

int laserX =160+80*a;
int laserA =160+80*a+25;

void draw() {
  background(0);
  //background
  bgImg=loadImage("img/bg.jpg");
  image(bgImg,0,0);
  
  //soil
  soilImg=loadImage("img/soil.png");
  image(soilImg,0,160);
  
  //grassland
  colorMode(RGB);
  fill(124,204,25);
  noStroke();
  rect(0,145,640,15);
  
  //sun
  colorMode(RGB);
  fill(225,225,0);
  noStroke();
  ellipse(590,50,110,110);
  colorMode(RGB);            //inside
  fill(253,184,19);
  noStroke();
  ellipse(590,50,100,100);
  
  //life
  lifeImg=loadImage("img/life.png");
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //groundhog
  groundhogImg=loadImage("img/groundhog.png");
    image(groundhogImg,280,80);
  
  //solder
   soldierImg=loadImage("img/soldier.png");

     if (r ==1) {image(soldierImg,x,160);}
   
     if (r == 2) {image(soldierImg,x,240);}
   
     if (r == 3) {image(soldierImg,x,320);}
   
     else if (r == 4) {image(soldierImg,x,400);}
  x+=20;
  if (x>=640){x=-80;}
   
    
    
     //robot laser
    colorMode(RGB);
    stroke(256,0,0);
    strokeWeight(10);
    line(laserX+25,160+80*q+37,laserA,160+80*q+37);
    laserA-=2;
    laserA-=3;
    if(robotX-laserX>=160) //repeat
      {laserX=robotX;
      laserA=laserX+20;}
    if(laserX-laserA>=20) //40
    {laserX=laserA+20;}
    
    //robot
    robotImg=loadImage("img/robot.png");
    image(robotImg,robotX,160+80*q);
    
}
