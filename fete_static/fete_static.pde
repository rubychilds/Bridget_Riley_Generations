float column_width;
float row_width;

void setup(){
  size(600,385);
  column_width = 600.0/10.0;
  row_width = 600/11.0;
  background(255);
}

int[] getColours(){

    int[][] colours = { {199,64,78},
                        {28,123,119},
                        {178,112,184},
                        {207,157,46},
                        {145,162,94},
                        {58,93,183},
                        {197,126,199},
                        {26,71,92},
                        {195,123,51},
                        {133,167,90},
                        {216,214,189},
                        {31,124,217},
                        {215,67,81},
                        {154,194,108},
                        {235,184,165},
                        {62,110,94},
                        {103,169,255}
                      };
  
  return colours[int(random(0,colours.length -1))];
}

void draw(){
  for (float y = 0.0; y < 60.0; y +=0.5){
    for(int column = 0; column < 600; column += column_width/2.0){
      int[] colours = getColours();
      fill(colours[0], colours[1], colours[2]);
      stroke(colours[0], colours[1], colours[2]);
      quad(column, y*row_width,
           column, y*row_width + row_width/2.0,
           column + column_width/2.0, y*row_width,
           column + column_width/2.0, y*row_width - row_width/2.0);
    }
  }
}
