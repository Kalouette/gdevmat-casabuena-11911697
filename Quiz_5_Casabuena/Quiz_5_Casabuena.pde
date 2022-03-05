void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

Walker thisWalker = new Walker();

void draw()
{
  //flsuh the screen with white bg
  background(255);
  fill(182, 52, 100);
  thisWalker.moveAndBounce();
  thisWalker.render();
  
}
