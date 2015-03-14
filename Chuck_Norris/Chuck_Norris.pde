boolean start;
boolean main;
boolean end;

PImage backGround;
String backGroundName;
int bulletAmount=15;
float prevMillis;

//ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Bullet [] bullets = new Bullet[bulletAmount];

int xPos =  50, yPos = 300, moveVal = 15;
Character character = new Character (xPos, yPos);

void setup()
{
  size(displayWidth, displayHeight);
  start = true;
  main = end = false;
  for(int i=0; i<bulletAmount; i++)
  {
    bullets[i] = new Bullet();
  }
  prevMillis = millis();
  
  frameRate(15);
}
void draw()
{
  if (keyPressed)
  {
   if(key == 'd' || key == 'D')
    {
      print("Pressed D\n");
      if(xPos < width/2)
      {
        int valAdd = min(width/2, xPos + character.getWidth() + moveVal) == width/2 ? width/2 - xPos - character.getWidth() : moveVal;
        xPos += valAdd;
      }
      else
      {
        
      }
      character.changePos(xPos, yPos, 'f');
    }
   else if(key == 'a' || key == 'A')
    {
      print("Pressed A\n");
      int valSub = max(0, xPos - moveVal) == 0 ? xPos : moveVal;
      xPos -= valSub;
      character.changePos(xPos, yPos, 'b');
    }
    
  }
  else
  {
     character.setIdle(); 
  }
  
  
  background(0);
  if(start)
  {
    for(int i=0; i<bulletAmount; i++)
    {
      bullets[i].display();
      bullets[i].update();
    }
    character.display();
  }
  else if(main)
  {
    
  }
  else
  {
    
  }
}


