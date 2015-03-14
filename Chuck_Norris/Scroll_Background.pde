int bgX;
int bgSpeed;
void scrollBackGround()
{
  if(character.xPos + character.width < width/2)
  {
    bgSpeed = 1;
    image(backGround,bgX,0);
    bgX -= bgSpeed;
    if(bgX <= -(width*2))
    {
      bgX = 0;
    }
  }
  else
  {
    bgSpeed=0;
    image(backGround,bgX,0);
  }
}

