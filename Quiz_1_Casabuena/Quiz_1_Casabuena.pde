void setup()
{
  size(1280, 720, P3D); //set window size to 1280 x 720
  camera (0,0, -(height/2.0) / tan(PI*30.0 / 180), 0, 0, 0, 0, -1, 0);
  
}

void draw()
{
  background (0); //sets background color of the whole window 
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawSineWave();
}

void drawCartesianPlane()
{
  background (0); //sets background color of the whole window 
  
  strokeWeight(3);
  color white = color(255, 255, 255);
  fill (white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0,-300, 0, 300);
  
  for (int i = -300; i <= 300; i+= 10)
  {
    line(i, -3, i, 3);
    line(-3, i, 3, i);
  }
}

void drawLinearFunction()
{
  color purple = color(255, 0, 255);
  fill(purple);
  stroke(purple);
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x * -5 + 30, 5); 
  }
}
void drawQuadraticFunction()
{
  
  color yellow = color (255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x+= 0.1f)
  {
    circle(x * 10, (float)Math.pow(x, 2) + (x * (-15)) -3, 5);
  }
  
}
void drawSineWave()
{
  color lightBlue = color (200, 200, 255);
  stroke(lightBlue);
  fill(lightBlue);
  
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 6, ((float)Math.sin(x + 0)*20), 2);
    
  }
}
