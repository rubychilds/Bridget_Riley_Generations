void setup(){
  size(500,500);
  background(255);

  midpoint = height/2.0;
  tenth = height/10.0;
  circle_radius = 15.0;
}

float circle_radius = 15.0;
float midpoint = height/2.0;
float tenth = height/10.0;
boolean increase_size = true;
float base_colour = 0;

float getColour(float x_value){
  float colour_val = ((x_value - 50.0)*255.0)/(450.0-50.0);
  
  if(floor(colour_val/255.0)%2 == 0){
    return colour_val%255.0;
  }
  return 225.0 - (colour_val%255.0);
}

void draw(){
  noStroke();
  background(255);
  base_colour += 5.0;
  for(int layer = 0; layer < 2; layer++){
    for(int i = 0; i < 10; i++){
      for (int position = 0; position < 5 - layer; position+=1){
         if( i > position + layer && i*tenth < height - position*tenth){
            fill(getColour(base_colour + midpoint - position*tenth - layer*tenth/2.0 ));
            ellipse(midpoint - position*tenth - layer*tenth/2.0, i*tenth - layer*tenth/2.0,  circle_radius, circle_radius);
            fill(getColour(base_colour + midpoint + position*tenth + layer*tenth/2.0));
            ellipse(midpoint + position*tenth + layer*tenth/2.0, i*tenth - layer*tenth/2.0, circle_radius, circle_radius);
         }
      }
    }
 }
}

