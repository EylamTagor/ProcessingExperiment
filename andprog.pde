float lx = width / 2, ly = height / 2, x = 100, y = 100;

void setup() {
  fullScreen();
  stroke(255);
}

void draw() {  
  background(0);
  fill(255);

  line(lx, 0, lx, height);
  line(0, ly, width, ly);

  if (mousePressed && Math.abs(mouseX - lx) < 75 && Math.abs(mouseY - ly) < 75) {
    lx = mouseX;
    ly = mouseY;
  } else if (mousePressed && Math.abs(mouseX - x) < 75 && Math.abs(mouseY - y) < 75) {
    x = mouseX;
    y = mouseY;
  }

  ellipse(x, y, 50, 50);

  x += (lx - x) / 100;
  y += (ly - y) / 100;
}
