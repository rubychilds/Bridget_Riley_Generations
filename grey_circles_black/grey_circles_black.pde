void setup(){
  size(600,300);
  background(200);

  third = width/4.0;
  circle_radius = 27.0;
  pulsate  = true;
}

float circle_radius;
float third = 0.0;

boolean pulsate;

void draw(){
  noStroke();
  background(200);
  
  if(pulsate){
    circle_radius +=1.0;
  }
  else{
    circle_radius -= 1.0;
  }
  if (circle_radius == 32.0 || circle_radius == 27.0){
    pulsate = !pulsate;
  }

  for(float position = 1.0; position < 4; position++){
    for(float height_pos = 1.0; height_pos <= 2.0; height_pos++){
      fill(255, 0, 0); // red
      ellipse( position*third, height_pos*height/3.0 , circle_radius+21, circle_radius+21);
      
      fill(255); // white
      ellipse( position*third, height_pos*height/3.0, circle_radius+17, circle_radius+17);
  
      fill(46,122,198); // blue
      ellipse( position*third, height_pos*height/3.0, circle_radius+6, circle_radius+6);
      
      fill(0); // black
      ellipse( position*third, height_pos*height/3.0, circle_radius, circle_radius);
    }
  }
}
