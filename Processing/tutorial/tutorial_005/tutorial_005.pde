float xstep = 10;
float ystep = 10;
float lastX = 20;
float lastY = 50;
float ynoise = random(10);
float y;
int borderX = 20;
int borderY = 10;

void setup() {
  size(500, 100);
  background(255);
  strokeWeight(5);
  smooth();
  stroke(0, 30);
  line(20, 50, 480, 50);
  
  for (int x=20; x<=480; x+=xstep) {
    y = 10 + noise(ynoise) * 80;
    if (lastX > -999) {
      line(x, y, lastX, lastY);
    }
    stroke(0);
    lastX = x;
    lastY = y;
    ynoise += 0.1;
  }
}
