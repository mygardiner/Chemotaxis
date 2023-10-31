class Bacteria
{
  int mySize, myX, myY, myColor;
  Bacteria(int x, int y, int rllybig)
  {
    mySize = rllybig;
    myX = x;
    myY = y;
    if(dist(myX, myY, mouseX, mouseY) > 5)
      myColor = color(255, 0, 0);
    else
      myColor = color(0, 0, 0);
  }
  Bacteria(){
    mySize = 10;
    myX = 0;
    myY = 0;
  }
  Bacteria(int x, int y){
    mySize = 50;
    myX = x;
    myY = y;
  }
  void show()
  {
    if(dist(myX, myY, mouseX, mouseY) > 5)
      fill(255, 0, 0);
    else
      fill(0, 0, 0);
      
    ellipse(myX, myY, mySize, mySize);
  }
  void runaway(){
    if(mouseX > myX && dist(myX, myY, mouseX, mouseY) > 5)
      myX = myX + (int)(Math.random()*6)-1;
    else if(dist(myX, myY, mouseX, mouseY) > 5)
      myX = myX + (int)(Math.random()*6)-4;
    else
      myX = myX;
   
    
  if(mouseY > myY && dist(myX, myY, mouseX, mouseY) > 5)
    myY = myY + (int)(Math.random()*6)-1;
  else if(dist(myX, myY, mouseX, mouseY) > 5)
    myY = myY + (int)(Math.random()*6)-4;
  else
    myY = myY; 
  if(dist(myX, myY, mouseX, mouseY) < 5){
    text("Yikes", 432, 250);
    text("Yikes", 332, 250);
    text("Yikes", 532, 250);
    text("Yikes", 432, 150);
    text("Yikes", 432, 350);
    text("Yikes", 232, 250);
    text("Yikes", 632, 250);
    text("Yikes", 432, 450);
    text("Yikes", 432, 50);
    text("Yikes", 432, 350);    
  }
  if(dist(myX, myY, mouseX, mouseY) > 5){
    ellipse(mouseX, mouseY, 30, 30);  
  }
  }
}
Bacteria bob, bobJr, bobIII, bobIV;
void setup()
{
  background(0);
  size(1000, 1000);
  bob = new Bacteria((int)(Math.random()*1000), (int)(Math.random()*1000), 25);
  bobthesecond = new Bacteria((int)(Math.random()*1000), (int)(Math.random()*1000), 25);
  bobthethird = new Bacteria((int)(Math.random()*1000), (int)(Math.random()*1000), 25);
  bobexceptitsthefourthone = new Bacteria((int)(Math.random()*1000), (int)(Math.random()*1000), 25);
}
void draw(){
  background(0);
  fill(255);  
  bob.runaway();
  bobthesecond.runaway();
  bobthethird.runaway();
  bobexceptitsthefourthone.runaway();
  bob.show();
  bobthesecond.show();
  bobthethird.show();
  bobexceptitsthefourthone.show();
  
}  
