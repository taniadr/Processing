void setup(){
  size(200, 200, P3D);
}

void draw(){
  background(0);
  translate(100, 100, 0);
  if (mousePressed){
    pointLight(255, 0, 0, width/2, height/2, 400);
    /*
     */
  }
  noStroke();
  fill(255);
  sphere(50);
}