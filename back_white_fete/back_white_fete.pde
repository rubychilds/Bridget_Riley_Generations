void setup(){
  size(570,400);
  column_width = 600.0/10.0;
  background(255);
}

float column_width;
boolean black = false;

void draw(){
  black = !black;
  background(255);
  for (float y = 0.0; y < 60.0; y ++){
    for(int column = 0; column < 600; column += column_width/2.0){
      fill(random(0,255),random(0,255),random(0,255));
      noStroke();
      quad(column, y*column_width,
           column, y*column_width + column_width/2.0,
           column + column_width/2.0, y*column_width,
           column + column_width/2.0, y*column_width - column_width/2.0);
    }
    black = !black;
  }
}
