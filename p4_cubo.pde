class Cubo {
  int lastX, lastY, contM, contN;
  float rotX, rotY;
  float distX, distY, distZ;
  boolean m, n;
  Cubo() {
    rotX = rotY = 0; 
    distX = distY = 0;
    distZ = 1;
    m = n = false;
    contM = contN = 0;
  }
  void lastPos() {
    lastX = mouseX;
    lastY = mouseY;
  }
  void updateDist() {
    distX = radians(mouseX - lastX);
    distY = radians(lastY - mouseY);
  }
  void updateRot() {
    rotX += distY+5;
    rotY += distX+5; 
    distX = distY = 0.0;
  }
  void updateRotY(){
    rotY += distY + 5;
    distY = 0.0;
  }
  void updateRotX(){
    rotX += distX + 5;
    distX = 0.0;
    
}

  void incZ() {
    distZ += 0.01; 
    if (distZ > 2.0)
      distZ = 2.0;
  }
  void decZ() {
    distZ -= 0.01; 
    if (distZ < 1.0)
      distZ = 1.0;
  }
void drawCubo() {
    pushMatrix(); 
    translate(width/2, height/2); 
    scale(distZ, distZ, distZ); 
    rotateX(rotX + distY); 
    rotateY(rotY + distX); 
    box(100);
    popMatrix();
  }
}
Cubo meuCubo;
void setup() {
  size(400, 400, P3D);
 // noStroke();
  fill(255, 0 , 0);
  meuCubo = new Cubo();
}
void draw() {
  background(0); 
  meuCubo.drawCubo();
      if (key == 'm' && contM%2 == 0)
    {
      meuCubo.updateRotY();
      contM++;
    }
    else if (key == 'm') 
    {
       
    }
    else if (key == 'n'){
      meuCubo.updateRotX();
    
    }
}
void mousePressed() {
  meuCubo.lastPos();
}
void mouseDragged() {
  meuCubo.updateDist();
}
void mouseReleased() {
  meuCubo.updateRot();
}
void keyPressed() {
  if (key == 'y'){
   meuCubo.incZ();
    } else if (key == 'x') {
      meuCubo.decZ();
    }
  }