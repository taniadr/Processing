int dragx, dragy, x, y;
void setup() {
  size(400, 400);
  dragx = width/2;
  dragy = 0;

  smooth();
}

void desce(int x, int y){
  while (y != height){
    x--;
    y++;
  }
}

void draw() {
  background(204);
  ellipse(dragx, dragy, 20, 20);

  if (dragy >=0 && dragy < 200){
     dragx++;
    if (dragx >= 200 && dragx <= 400){
      println("1Quad");
      dragy++;
      dragx++;
    }
    else if (dragx <= 200 && dragx>=0){
      println("4Quad");
      dragy--;
     
    }
  }
  else if (dragy >= 200 && dragy <= 400){
     dragx--;
    if (dragx >= 200 && dragx <= 400)
      {
        println("2Quad");
        dragy++;
        
      }
      else if (dragx <= 200 && dragx >0)
      {
        println("3Quad");
        dragy--;
        
      }
  }
}