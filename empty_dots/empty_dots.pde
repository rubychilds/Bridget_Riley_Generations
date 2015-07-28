void setup(){
  size(500,500);
  background(245);
  tenth = height/7.0;
  circle_radius = 24.0;
}

float circle_radius = 20.0;
float tenth = 0.0;

void draw(){
  noStroke();
  background(245);

  for(int position_x = 1; position_x < 7; position_x++){
     for(int position_y = 1; position_y < 7; position_y++){
       for(int shift = 0; shift < 2; shift++){
       if (position_y*tenth + shift*tenth/2.0 < height - shift*tenth/2.0 && position_x*tenth + shift*tenth/2.0  < width - shift*tenth/2.0){

         fill(0);
         ellipse(position_x*tenth + shift*tenth/2.0,
                 position_y*tenth + shift*tenth/2.0,
                 circle_radius, circle_radius);
         fill(255);
         ellipse(position_x*tenth + shift*tenth/2.0, 
                 position_y*tenth + shift*tenth/2.0,
                 circle_radius/3.0, circle_radius/3.0);
       }  
     }
    }
  }
}
