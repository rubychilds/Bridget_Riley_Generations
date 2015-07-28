void setup(){
  size(400,600);
  background(0);
  float triangle_width = 600/50;
  fill(255);
  noStroke();
  for(float i =0; i < 50; i++){
      triangle(i*triangle_width, 0.0, 
               i*triangle_width+0.5*triangle_width, height, 
               i*triangle_width+triangle_width, 0.0);
  }
}
