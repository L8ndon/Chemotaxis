PImage stonks;  
PImage stonksAcquired;
Bacteria bruh = new Bacteria();
 void setup()   
 {     
 	 background(255, 255, 255);
   size(600, 600);   
  stonksAcquired = loadImage("https://sevensreport.com/wp-content/uploads/2016/07/stock-market-3.jpg");
  stonks = loadImage("https://cdn130.picsart.com/299886627296211.png?r240x240");
  
 }   
 void draw()   
 {    
  bruh.walk();
  bruh.show();
  fill(0);
  textSize(40);
  text("Stonks.", 220, 75); 
 }  
 class Bacteria    
 {     
 	int myX, myY;
  Bacteria()
  {
    myX = 200;
    myY = 200;
  }
  void walk()
  {
    if(mouseX > myX)
    myX = myX + (int)(Math.random() * 5) - 1;
    else
    myX = myX + (int)(Math.random() * 5) - 3;
    if(mouseY > myY)
    myY = myY + (int)(Math.random() * 5) - 1;
    else
    myY = myY + (int)(Math.random() * 5) - 3;
    //myX = myX + (int)(Math.random() * 3) - 1;
    //myY = myY + (int)(Math.random() * 3) - 1;
     textSize(25);
    if(myX == 450 && myY == 450)
    text("Stonks acquired.", 200, 400);
  }
  void show()
  {
    image(stonks, myX, myY, 50, 50);
    image(stonksAcquired, 450, 450, 50, 50);
  }
 }    
