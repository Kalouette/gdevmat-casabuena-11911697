void setup()
{
  size(1020,720,P3D);
  camera(0, 0, -(height/2.0) / tan (PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255); 
}

void draw()
{
  float rngColor = int(random(5));
  float gaussian = randomGaussian();
  float rng = int(random(-500, 500));
  int randColor = int (random(0, 255));
  int randAlpha = int (random(10, 100));
  
  float standardDeviation = 100;
  float sDY = 300;
  float mean = int(random(10));
  float x = standardDeviation * gaussian + mean;
  float y = rng;
  float size = sDY * (gaussian / 20) - mean;
  noStroke();
  circle(x, y, size);
  
  if(rngColor == 0)
  {
    fill(0, randColor, randColor, randAlpha);
  }
  else if (rngColor == 1)
  {
    fill(randColor, 0, randColor, randAlpha);
  }
  else if (rngColor == 2)
  {
    fill(randColor, randColor, 0, randAlpha);
  }
  else if (rngColor == 3)
  {
    fill(0, 0, randColor, randAlpha);
  }
  else if (rngColor == 4)
  {
    fill(randColor, 0, 0, randAlpha);
  }
  else if (rngColor == 5)
  {
    fill(0, randColor, 0, randAlpha);
  }
  
}
