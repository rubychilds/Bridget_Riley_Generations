float a;
float inc;
boolean black;

void setup() {
  size(490,490);
  background(255);
  a = 0.0;
  inc = TWO_PI/25.0;
  fill(0);
  black = true;
  
  noStroke();
  for(int wave = -50; wave < width + 20; wave+=20){
      black = !black;      
      float[][] vertices = new float[251][2];
      int index = 0;
      for(int i=0; i<=500; i=i+4) {
        vertices[index][0] = i;
        vertices[index][1] = wave+sin(a)*10.0;
        vertices[250-index][0] = i-10;
        vertices[250-index][1] = wave+30+sin(a)*10.0;
        index ++;
        a = a + inc;
      }

      fill(255);
      noStroke();
      beginShape();
      if(black){
          fill(getColour(wave));
      }
      for(int i=0; i< vertices.length; i++) {
        vertex(vertices[i][0], vertices[i][1]);
      }
      endShape();
  } 
}

float getColour(float x_value){
  println(x_value);
  float colour_val = ((x_value + 50.0)*255.0)/(510.0 + 50.0);
  
  if(floor(colour_val/255.0)%2 == 0){
    return colour_val%255.0;
  }
  return 225.0 - (colour_val%255.0);
}
