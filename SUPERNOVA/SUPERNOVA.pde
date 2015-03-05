

void setup()
{
  size(1280, 800);
  noStroke();
  ellipseMode(CENTER);

  //FOR FAST VERSION, USE 30 FRAMERATE
  // frameRate(30);
  frameRate(1);
}

void draw() 
{

  draw_target(width/2, height/2, 1600, 10);
  smooth();
}

void draw_target(int xloc, int yloc, int size, int num) {
  float steps = size/num; 
  for (int i=0; i<num; i++) {
    fill(color(random(255), random(255), random(255))); 
    ellipse(xloc, yloc, size-i*steps, size-i*steps);
  }
}

void keyPressed() {
  save(".jpg");
}

