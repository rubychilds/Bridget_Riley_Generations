void setup(){
  size(500,500);
  background(255);
  circle_radius = 100.0;

}

int no_circles = 0;
float circle_radius;

void draw(){
  if (no_circles < 40){
    noFill();
    stroke(229,215,118);
    strokeWeight(5);
  
    ellipse(random(0, width), random(0, height), circle_radius, circle_radius);
  
    stroke(252,255,130);
    strokeWeight(5);
    ellipse( random(0, width), random(0, height), circle_radius, circle_radius);
    
    no_circles ++;
  }

}
