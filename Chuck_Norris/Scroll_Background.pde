int bgX;
int bgSpeed;
void scrollBackground()
{
  if(character.xPos + character.getWidth() >= width/2)
  {
    bgSpeed = moveVal;
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

