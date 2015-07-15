float circle_radius;
float midpoint;
float tenth;
float base_colour;

void setup(){
  size(550,550);
  background(187,182,179);

  midpoint = height/2.0;
  tenth = height/10.0;
  circle_radius = 20.0;
  base_colour = 0;
}

void draw(){
  noStroke();
  background(187,182,179);
  base_colour += 5.0;
  for(int layer = 0; layer < 2; layer++){
    for(int i = 1; i < 12; i++){
      for (int position = 0; position < 5 - layer; position+=1){
        if(i*tenth > tenth && i*tenth + layer*tenth/2.0 < height - tenth){           
               pushMatrix();
                 fill(getColour(base_colour + midpoint - position*tenth - layer*tenth/2.0 - (i*tenth - layer*tenth/2.0)));           
                 translate(midpoint - (position*tenth + layer*tenth/2.0), i*tenth + layer*tenth/2.0);
                 rotate(getRotation(i*tenth + layer*tenth/2.0));        
                 ellipse(0, 0,  2.0*circle_radius/3.0, circle_radius);
               popMatrix();
        
               pushMatrix(); 
                 fill(getColour(base_colour + midpoint + position*tenth + layer*tenth/2.0 - (i*tenth - layer*tenth/2.0)));
                 translate(midpoint + position*tenth + layer*tenth/2.0, i*tenth + layer*tenth/2.0);
                 rotate(-getRotation(i*tenth + layer*tenth/2.0));          
                 ellipse(0, 0, 2.0*circle_radius/3.0, circle_radius);
               popMatrix();
           }  
      }
    }
 }
}

float getColour(float x_value){
  float colour_val = ((x_value - 50.0)*235.0)/(450.0-50.0);
  if(floor(colour_val/235.0)%2 == 0){
    return colour_val%235.0;
  }
  return 225.0 - (colour_val%235.0);
}

float getRotation(float val){
  float rotational_val = ((val - 50.0)*60.0)/(450.0-50.0);
  rotational_val = 30.0 - rotational_val;
  return radians(rotational_val);
}

