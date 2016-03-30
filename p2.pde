int armAngle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 135;
void setup() {
  size(200, 200); 
  smooth(); 
  frameRate(30);
}
void draw() {
  background(255); 
  pushMatrix(); 
  translate(50, 50); 
  drawRobot();
  armAngle += angleChange;
  if (armAngle > ANGLE_LIMIT || armAngle < 0) {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
  popMatrix();
}

void drawRobot() {
  stroke(164, 199, 57);
  strokeWeight(4);
  line(15, 0, 30, 15);
  line (60, 0, 45, 15);
  
  noStroke();
  fill(164, 199, 57); 
  arc(39, 31, 50, 50, PI, 2*PI);
  rect(14, 32, 50, 50, 0, 0, 8, 8);

  drawLeftArm(); 
  drawRightArm();
  
  rect(22, 70, 14, 35, 8, 8, 8, 8); 
  rect(40, 70, 14, 35, 8, 8, 8, 8);
  fill(255); 
  ellipse(30, 18, 8, 8); 
  ellipse(50, 18, 8, 8);
}

void drawLeftArm() {
  pushMatrix(); 
  translate(12, 32); 
  rotate(radians(armAngle)); 
  rect(-12, 0, 12, 37, 8, 8, 8, 8); 
  popMatrix();
}

void drawRightArm() {
  pushMatrix(); 
  translate(66, 32); 
  rotate(radians(-armAngle)); 
  rect(0, 0, 12, 37, 8, 8, 8, 8); 
  popMatrix();
}