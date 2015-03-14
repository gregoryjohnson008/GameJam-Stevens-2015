class Bullet
{
  int bulletSize = 20;
  float bulletX,bulletY;
  float bulletSpeedX, bulletSpeedY;
  
  Bullet()
  {
    bulletX = -100;
    bulletY = -100;
    bulletSpeedX = bulletSpeedY = 0;
  }
  
  void display()
  {
    fill(255,0,0);
    noStroke();
    ellipse(bulletX, bulletY, bulletSize, bulletSize);
  }
  
  void update()
  {
    bulletX += bulletSpeedX;
    if(mousePressed)
    {
      bulletSpeedX = 10.0;
      bulletX = bulletSize/2;
      bulletY = height/2;
    }
  } 
}
    
  
  
