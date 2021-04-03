float xstep = 1;
float lastX = -999;
float lastY = -999;
float angle = 0;
float y= 50;
float customRandom() {
  float retValue = 1 - pow(random(1), 5);
  return retValue;
}
void setup() {
  size(500, 100);
  background(255);
  strokeWeight(5);
  smooth();
  stroke(0, 30);
  line(20, 50, 480, 50);
  
  for (int x=20; x<=480; x+=xstep) {
    float rad = radians(angle);
    y = 20 + (customRandom() * 60);
    if (lastX > -999) {
      line(x, y, lastX, lastY);
    }
    stroke(0);
    lastX = x;
    lastY = y;
    angle ++;
  }
}
