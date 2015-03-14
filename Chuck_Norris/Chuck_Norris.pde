boolean start;
boolean main;
boolean end;

PImage backGround;
String backGroundName;
int bulletAmount=15;

//ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Bullet [] bullets = new Bullet[bulletAmount]=15;


void setup()
{
  size(displayWidth, displayHeight);
  start = true;
  main = end = false;
  for(int i=0; i<bulletAmount; i++)
  {
    bullets[i] = new Bullet();
  }
}
void draw()
{
  background(0);
  if(start)
  {
    for(int i=0; i<bulletAmount; i++)
    {
      bulltes[].display();
      bullets[].update();
    }
  }
  else if(main)
  {
    
  }
  else
  {
    
  }
}
