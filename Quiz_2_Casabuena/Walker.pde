class Walker
{
  float x;
  float y;
  
  void render()
  {
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    int rngColor = int(random(255));
    int randColor = int(random(6));
    int randAlpha = int(random(100));
    
    if(randColor == 0)
    {
      color that = color (0, rngColor, rngColor, randAlpha);
      fill(that);
    }
    
    else if(randColor == 1)
    {
      color that = color (rngColor, 0, rngColor,randAlpha);
      fill(that);
    }
    else if(randColor == 2)
    {
      color that = color (rngColor, rngColor, 0, randAlpha);
      fill(that);
    }
    else if(randColor == 3)
    {
      color that = color (rngColor, 0, 0, randAlpha);
      fill(that);
    }
    else if(randColor == 4)
    {
      color that = color (0, rngColor, 0, randAlpha);
      fill(that);
    }
    else if(randColor == 5)
    {
      color that = color (0, 0, rngColor, randAlpha);
      fill(that);
    }
    else if(randColor == 6)
    {
      color that = color (rngColor, rngColor, rngColor, randAlpha);
      fill(that);
    }
   
    if (rng == 0)
    {
      y+=5;
      
    }
    else if (rng == 1)
    {
      y-=5;
    }
    else if (rng == 2)
    {
      x+=5;
    }
    else if (rng == 3)
    {
      x-=5;
    }
    else if (rng == 4)
    {
      x+=10;
      y+=10;
    }
    else if (rng == 5)
    {
      x-=10;
      y+=10;
    }
    else if (rng == 6)
    {
      x+=10;
      y-=10;
    }
    else if (rng == 7)
    {
      x-=10;
      y-=10;
    }
    
  }
}
