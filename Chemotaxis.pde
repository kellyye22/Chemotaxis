Bacteria [] colony = new Bacteria[20];
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
 	background(255);
  fill(100);
  ellipse(250, 450, 150, 50);
  fill(0);
  textAlign(CENTER);
  textSize(32);
  text("Click to restart!", 250, 50);
  ellipse(250, 455, 150, 50);
  
  for(int i = 0; i < colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
   
 }  
 
 
 void mouseClicked(){
   setup();
 }
 
 class Bacteria    
 {     
 	int myX, myY, myColor;
  
  Bacteria(int c){
    myColor = c;
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  
  void move(){
    if((myX >= 150 && myX <= 325) && (myY >= 405)){
      myX = 1000;
      myY = 1000;
      fill(0);
    }else if (myX != 1000 && myY != 1000){
      if(mouseX > myX){
        myX = myX + (int)(Math.random()*3);
      }else{
        myX = myX - (int)(Math.random()*3);
      }
    
      if(mouseY > myY){
        myY = myY + (int)(Math.random()*3);
      }else{
        myY = myY - (int)(Math.random()*3);
      }
    }
    
    
  }
  
  void show(){
    fill(myColor);
    ellipse(myX, myY, 50, 50);
  }
 }    
