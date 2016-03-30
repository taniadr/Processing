void setup() {
  size(200, 200, P3D);
}
void draw() {
  background(0);
    translate(100, 100, 0);
    if (mousePressed) {
      //lights();
      //ambientLight(0,0,255);
      directionalLight(0, 255, 0, 0, -1, 0);
  }
  noStroke();
  fill(255);
  sphere(50);
}