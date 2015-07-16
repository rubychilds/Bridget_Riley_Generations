void setup() {
  size(490,490);
  background(255);
  a = 0.0;
  inc = TWO_PI/25.0;
  fill(0);
  black = true;
}

  float a;
  float inc;
  boolean black;

void draw(){
  noStroke();
  for(int wave = -50; wave < width + 10; wave+=10){
      black = !black;      
      float[][] vertices = new float[251][2];
      int index = 0;
      for(int i=0; i<=500; i=i+4) {
        vertices[index][0] = i;
        vertices[index][1] = wave+sin(a)*10.0;
        vertices[250-index][0] = i;
        vertices[250-index][1] = wave+10+sin(a)*10.0;
        index ++;
        a = a + inc;
      }


      fill(255,0,0);
      beginShape();
      for(int i=0; i< vertices.length; i++) {
        vertex(vertices[i][0]-1.0, vertices[i][1]-1.0);
      }
      endShape();
      fill(255);
      if(black){
        fill(0);
      }
      noStroke();
      beginShape();
      for(int i=0; i< vertices.length; i++) {
        vertex(vertices[i][0], vertices[i][1]);
      }
      endShape();
  }

}
