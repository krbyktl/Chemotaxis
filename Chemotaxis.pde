Bacteria [] colony;
 void setup()   
 {     
   size(600, 600);
   colony = new Bacteria[30];
   for(int i = 0; i<colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {   
   background(50, 75, 150); 
   for(int i = 0; i<colony.length; i++)
   {
     colony[i].walk();
     colony[i].show();
   }
 }  
 class Bacteria
 {     
   int myX, myY, yourX, yourY;
   Bacteria()
   {
     myX = 300;
     myY = 300;
     yourX = 250;
     yourY = 250;
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
     yourX = yourX + (int)(Math.random()*5)-2;
     yourY = yourY + (int)(Math.random()*5)-2;
     
   }
   void show()
   {
     color myColor = color(0, 255, 0);
     fill(myColor);
     ellipse(myX, myY, 15, 15);
     fill(100);
     ellipse(yourX, yourY, 10, 10);
     if(get(myX+15, myY+15) == color(100))
     {
       fill(255, 0, 0);
       ellipse(300, 500, 15, 15);
     }
   }
 }  