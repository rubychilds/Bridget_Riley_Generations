int time;
float circle_radius;
float tenth;
boolean black = true;

void setup(){
  size(500,500);
  background(255);
  tenth = height/7.0;
  circle_radius = 24.0;
  time = 0;
}

void draw(){
  noStroke();
  background(255);

  int colour = 0;
  noStroke();
  for (int circle_radius = 500; circle_radius > 0; circle_radius-=20){
    if(!black){
      fill(255);
    }
    else{
      fill(0);
    }
    ellipse(width/2.0, height/2.0, circle_radius, circle_radius);
    black = !black;
  }
   if( millis() > time ){
    time = millis() + 2000;
  }

}
