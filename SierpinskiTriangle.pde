int L = 300;

public void setup() {
  background(0);
  size(400, 400);
}

public void draw() {
  noStroke();
  background(0);
  sierpinski(50, 350, L);
}

public void mouseDragged() {
  if (mouseX <= 200)
    L--;
  if (mouseX > 200)
    L++;
}


public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    fill(200 - (int)(Math.random()*100), 200 - (int)(Math.random()*100), 200 - (int)(Math.random()*100));
    triangle(x, y, x + (len / 2), (y - len), (x + len), y);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
