int timeStamp= 10000;  
int y= 600;
int x= 400;
PImage ball;
PImage field;
color bgColor;
color c;
color r;
color g;
color b;
int e= 3;
int ShotLoc =0;
int total;      
String a = "CENTER";
String GAME= "Game Over"; 
boolean GameOver = false;  
void setup()
{
  size (800, 800);
  field= loadImage("field.jpg");
  x = 400;
  y = 600;
  field.resize(800, 800);
  ball= loadImage("ball.png");
  
}

void draw()
{
  
  if(GameOver == false)
  {
 background(bgColor);
  imageMode(CORNER);
  image(field, 0, 0);
  
 imageMode(CENTER);
  image(ball,x,y,100,100);
}
 
if (GameOver == true)

background(255); 
fill(0, 102, 153);

}
void keyPressed()
{
  if (key == 'w')
  {
     y = 600;
  x = 400; 
  ShotLoc=ShotLoc+1; 
  
  }

  if (key == 'a')
  {
y = 600;
  x = 400; 
  ShotLoc=ShotLoc+1; 
  }
  if (key == 's')
  {
y = 600;
  x = 400;
  ShotLoc=ShotLoc+1; 
  }

  if (key == 'f')
  {
    x=x-200;
    timeStamp=millis();  
  }             
  if (key == 'g')
 {
 x=x+200;   
 timeStamp=millis(); 
} 

 

if(millis() - timeStamp > 2000)
{
  timeStamp = millis(); 
  
  background(255);
 
 GameOver = true; 
 
}
}