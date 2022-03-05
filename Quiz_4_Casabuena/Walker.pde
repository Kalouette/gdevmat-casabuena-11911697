public class Walker
{
  public float x; 
  public float y;
  public float tx = 0, ty = 10000;
  public float tSizeX = 5, tSizeY = 150;
  public float size;
  
  public float colorR;
  public float colorG;
  public float colorB;
  public float tColorX = 0, tColorY = 255;
  
  void render()
  { 
    size = map(noise(tSizeX), 0, 1, 5, 150);
    circle(x, y, size);
    
    tSizeX += 0.01f;
  }
  
  void perlinWalk()
  {
    colorR = map(noise(tColorX), 0, 1, -320, 320);
    colorG = map(noise(tColorX), 0, 1, -320, 320);
    colorB = map(noise(tColorX), 0, 1, -320, 320);
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    fill(0, colorG, colorB, 20);
    
    tx += 0.01f;
    ty += 0.01f;
    tColorX += 0.01f;
    tColorY += 0.01f;
  }
}
