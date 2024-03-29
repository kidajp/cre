float radius = 100;
int centX = 250;
int centY = 150;

void setup() {
  size(500, 300);
  background(255);
  strokeWeight(5);
  smooth();
  stroke(0, 30);
  noFill();
  ellipse(centX, centY, radius*2, radius*2);
  
  stroke(20, 50, 70);
  float x,y;
  float lastX = -999;
  float lastY = -999;
  for (float ang=0; ang<=360; ang += 5) {
    float rad = radians(ang);
    x = centX + (radius * cos(rad));
    y = centY + (radius * sin(rad));
    point(x, y);
  }
}
