void setup(){
  size(880,600);
  background(255);
    
  noStroke();
  boolean black = true;
  float total_length = 0.0;
  int i = 0;
  float x = 0.92;
  float fixed_square = 40.0;
  
  while(total_length < (width/2 + 10)  && i < 40){ 
     if( (height/fixed_square)%2 == 0){ // changes whether next one is black or white dependent on height
       black = !black;
     }
    float rectangle_width = fixed_square*pow(x,i);
    for (int j = 0; j < height; j = j+int(fixed_square)){
      if(j%fixed_square == 0){
        if(black){  
          fill(0);
        }
        else{
           fill(255);
        }
        black = !black; // swaps for checkboard effect
        rect(total_length, j, rectangle_width, fixed_square);    
        rect(880 - (total_length + rectangle_width), j, rectangle_width, fixed_square);   
      }
    }
    total_length += rectangle_width;
    i++;
  }
}

