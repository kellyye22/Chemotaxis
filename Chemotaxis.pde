Bacteria [] colony = new Bacteria[30];
int pink = color(255, 198, 198);
int lilac = color(254, 198, 255);
int purple = color(209, 180, 255);
int blue = color (180, 206, 255);
int mint = color(162, 255, 246);
int green = color(162, 255, 172);
int yellow = color(235, 255, 126);

int colors[] = {pink, lilac, purple, blue, mint, green, yellow};

 void setup()   
 {     
 	 size(500,500);
   
   for(int i = 0; i < colony.length; i++){
     int selectedColor = (int)(Math.random()*6);
     colony[i] = new Bacteria(colors[selectedColor]);
   }
 }   
 void draw()   
 {    
 	background(0);
  for(int i = 0; i < colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
  
  Bacteria(int c){
    myColor = c;
    myX = 250;
    myY = 250;
  }
  
  void move(){
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  
  void show(){
    fill(myColor);
    ellipse(myX, myY, 50, 50);
  }
 }    
