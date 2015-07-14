void setup(){
  size(880, 600);
  background(255);
    
  noStroke();
  boolean black = true;
  int total_length = 0;
  int i = 0;
  float x = 0.87;
  float fixed_square = 20.0;
  
  while(total_length < width/2+10){
    black = !black;

    float rectangle_width = fixed_square*x*pow(x,i);
    for (int j = 0; j < height; j = j+int(fixed_square)){
      println(j);
      if(j%20 == 0){
        if(black == true){  
          fill(0);
          black = false;
        }
         else{
           fill(255);
           black = true;
         }
        rect(total_length,j,rectangle_width,fixed_square);      
        rect(880-total_length,j,rectangle_width,fixed_square);        
      }
    }
    total_length += rectangle_width;
    i++;
  }
}

