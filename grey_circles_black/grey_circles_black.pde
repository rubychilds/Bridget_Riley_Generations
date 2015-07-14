void setup(){
  size(600,300);
  background(200);

  third = width/4.0;
  circle_radius = 27.0;
}

float circle_radius = 20.0;
float third = 0.0;


void draw(){
  noStroke();
  background(200);

  for(float position = 1.0; position < 4; position++){

      fill(255, 0, 0);
      ellipse( position*third, height/3.0 , circle_radius+21, circle_radius+21);
      ellipse( position*third, 2.0*height/3.0 , circle_radius+21, circle_radius+21);
      
      fill(255);
      ellipse( position*third, height/3.0 , circle_radius+17, circle_radius+17);
      ellipse( position*third, 2.0*height/3.0 , circle_radius+17, circle_radius+17);
  
      fill(46,122,198);
      ellipse( position*third, height/3.0 , circle_radius+6, circle_radius+6);
      ellipse( position*third, 2.0*height/3.0 , circle_radius+6, circle_radius+6);
  
      
      fill(0);
      ellipse( position*third, height/3.0 , circle_radius, circle_radius);
      ellipse( position*third, 2.0*height/3.0 , circle_radius, circle_radius);

  }
}
