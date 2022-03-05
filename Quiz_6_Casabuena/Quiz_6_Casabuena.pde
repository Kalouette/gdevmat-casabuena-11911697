void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight /2);
  return new PVector(x, y);
}

void draw()
{
  background(130);
  
  PVector mouse = mousePos();
  
  mouse.normalize().mult(300);

  strokeWeight(10);
  stroke(255, 0, 0, 500);
  line(0, 0, mouse.x, mouse.y);
  
  strokeWeight(5);
  stroke(255, 255, 255, 200);
  line(0, 0, mouse.x, mouse.y);
  
  mouse.normalize().mult(50);
  strokeWeight(12);
  stroke(0, 0, 0, 200);
  line(0, 0, mouse.x, mouse.y);
  
  
}
